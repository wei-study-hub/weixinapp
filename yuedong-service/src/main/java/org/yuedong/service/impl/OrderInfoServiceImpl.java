package org.yuedong.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.yuedong.constants.ActivityStatus;
import org.yuedong.constants.CouponStatus;
import org.yuedong.constants.CourseStatus;
import org.yuedong.constants.NoticeType;
import org.yuedong.constants.OrderStatus;
import org.yuedong.constants.OrderType;
import org.yuedong.constants.PageConstants;
import org.yuedong.constants.ResponseCode;
import org.yuedong.dao.ActivityInfoDao;
import org.yuedong.dao.BaseDao;
import org.yuedong.dao.CouponInfoDao;
import org.yuedong.dao.CourseInfoDao;
import org.yuedong.dao.ExperienceCourseDao;
import org.yuedong.dao.ImgInfoDao;
import org.yuedong.dao.NoticeInfoDao;
import org.yuedong.dao.OrderInfoDao;
import org.yuedong.dao.StudentInfoDao;
import org.yuedong.dao.UserInfoDao;
import org.yuedong.model.ActivityInfo;
import org.yuedong.model.CouponInfo;
import org.yuedong.model.CourseInfo;
import org.yuedong.model.ExperienceCourse;
import org.yuedong.model.NoticeInfo;
import org.yuedong.model.OrderInfo;
import org.yuedong.model.StudentInfo;
import org.yuedong.model.UserInfo;
import org.yuedong.pay.Charge;
import org.yuedong.pay.WxpubCharge;
import org.yuedong.service.CouponInfoService;
import org.yuedong.service.OrderInfoService;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.utils.XingePush;
import org.yuedong.vo.ActivityOrderModel;
import org.yuedong.vo.OrderDetail;
import org.yuedong.vo.OrderModel;
import org.yuedong.vo.PayModel;

import com.alibaba.fastjson.JSON;
import com.pingplusplus.model.Event;

@Service("orderInfoService")
public class OrderInfoServiceImpl extends BaseServiceImpl<OrderInfo> implements OrderInfoService {

	@Autowired
	private OrderInfoDao orderInfoDao;

	@Autowired
	private ActivityInfoDao activityInfoDao;
	@Autowired
	private CourseInfoDao courseInfoDao;
	@Autowired
	private UserInfoDao userInfoDao;
	@Autowired
	private StudentInfoDao studentInfoDao;
	@Autowired
	private ImgInfoDao imgInfoDao;
	@Autowired
	private NoticeInfoDao noticeInfoDao;
	@Autowired
	private CouponInfoDao couponInfoDao;
	@Autowired
	private ExperienceCourseDao experienceCourseDao;
 
	@Autowired
	private CouponInfoService couponInfoService;

	@Autowired
	@Qualifier("orderInfoDao")
	public void setBaseDao(BaseDao<OrderInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 获取用户进行中订单数量
	 */
	public int getOngoingOrderNum(String userCode, String orderType) {
		int num = 0;
		OrderInfo orderInfo = new OrderInfo();
		orderInfo.setUserCode(userCode);
		orderInfo.setStatus(OrderStatus.PAY_SUCCESS);
		// 计算用户进行中的活动订单数量
		if (OrderType.ACTIVITY.equals(orderType)) {
			orderInfo.setOrderType(OrderType.ACTIVITY);
			List<OrderInfo> activityOrders = this.findAll(orderInfo);
			for (OrderInfo temp : activityOrders) {
				ActivityInfo activityInfo = this.activityInfoDao.findByCode(temp.getGoodsCode());
				if (!ActivityStatus.END.equals(activityInfo.getStatus())) {
					num++;
				}
			}
		}
		// 计算用户进行中的课程订单数量
		else if (OrderType.COURSE.equals(orderType)) {
			orderInfo.setOrderType(OrderType.COURSE);
			List<OrderInfo> courseOrders = this.findAll(orderInfo);
			for (OrderInfo temp : courseOrders) {
				CourseInfo courseInfo = this.courseInfoDao.findByCode(temp.getGoodsCode());
				if (!CourseStatus.END.equals(courseInfo.getStatus())) {
					num++;
				}
			}
		}
		return num;
	}

	/**
	 * 创建活动订单
	 */
	public ActivityOrderModel createActivityOrder(String userCode, String activityCode, String activityTypeCode) {

		ActivityOrderModel activityOrderModel = new ActivityOrderModel();
		ActivityInfo activityInfo = this.activityInfoDao.findByCode(activityCode);
		if (ActivityStatus.ONGOING.equals(activityInfo.getStatus())) {
			
			activityOrderModel.setActivityCode(activityCode);
			activityOrderModel.setActivityName(activityInfo.getActivityName());
			String activityTime = DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getBeginTime())+ "-"
					+ DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getEndTime());
			activityOrderModel.setActivityTime(activityTime);
			activityOrderModel.setScopeTypeCode(activityTypeCode);
			activityOrderModel.setAddress(activityInfo.getAddress());
			activityOrderModel.setPrice(activityInfo.getPrice());
			activityOrderModel.setUserCode(userCode);
			return activityOrderModel;
		}
		return null;
	}

	/**
	 * 提交活动订单
	 */
	public String intsertActivityOrder(String userCode, String goodsCode, String studentCode, String couponCode,
			String price, String amount, String orderNo, String remarks) {
		OrderInfo orderInfo = new OrderInfo();
		orderInfo.setOrderNo(orderNo);
		// 从订单详情进入，订单已存在
		OrderInfo exitOrderInfo = this.orderInfoDao.findByCode(orderNo);
		if (exitOrderInfo != null) {
			return orderNo;
		}
		// 订单不存在
		orderInfo.setUserCode(userCode);
		orderInfo.setStudentCode(studentCode);
		orderInfo.setGoodsCode(goodsCode);
		OrderInfo tempOrderInfo = this.orderInfoDao.findByCode(orderNo);
		if (tempOrderInfo != null) {
			return ResponseCode.EXIT;
		}
		orderInfo.setAmount(Integer.parseInt(amount));
		orderInfo.setCouponCode(couponCode);
		orderInfo.setRemarks(remarks);
		orderInfo.setPrice(Integer.parseInt(price));
		orderInfo.setCreateTime(new Date());
		orderInfo.setModifyTime(new Date());
		orderNo = CodeGeneratorUtils.getCode(20);
		orderInfo.setOrderNo(orderNo);
		orderInfo.setNum(1);
		orderInfo.setStatus(OrderStatus.OBLIGATION);
		orderInfo.setOrderType(OrderType.ACTIVITY);

		ActivityInfo activityInfo = this.activityInfoDao.findByCode(goodsCode);
		
		if(!ActivityStatus.ONGOING.equals(activityInfo.getStatus())){
			return null;
		}
		try {
			// 插入订单
			int result = this.insert(orderInfo);
			// 更新报名人数
			int value = this.activityInfoDao.updateByCode(activityInfo);
			// 更新优惠券状态
			int temp = 1;
			CouponInfo couponInfo = this.couponInfoDao.findByCode(couponCode);
			if(couponInfo != null){
				couponInfo.setStatus(CouponStatus.USED);
				temp = this.couponInfoDao.updateByCode(couponInfo);
			}
			System.out.println(result + "--" + value + "--" + temp);
			if ((result > 0) && (value > 0) && (temp > 0)) {
				return orderNo;
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return null;
	}

	/**
	 * 付款成功
	 */
	public Integer paySuccess(Event event) {
		Object object = event.getData().get("object");
		Charge charge = JSON.parseObject(JSON.toJSONString(object), Charge.class);
		String content = "";
		String title = "支付成功";
		OrderInfo orderInfo = null;
		Boolean result = charge.getPaid();

		if (result) {
			String orderNo = charge.getOrder_no();
			orderInfo = orderInfoDao.findByCode(orderNo);
			UserInfo userInfo = userInfoDao.findByCode(orderInfo.getUserCode());
			content = charge.getBody()+"支付成功，成功支付"+ orderInfo.getAmount()/100 + "元";
			// 发送付款成功通知
			NoticeInfo noticeInfo = new NoticeInfo();
			noticeInfo.setContent(content);
			noticeInfo.setCreateTime(new Date());
			noticeInfo.setNoticeCode(CodeGeneratorUtils.getCode(20));
			noticeInfo.setModifyTime(new Date());
			noticeInfo.setUserCode(userInfo.getUserCode());
			noticeInfo.setTitle(title);
			noticeInfo.setNoticeType(NoticeType.PAY_NOTICE);
			// 更新订单状态
			orderInfo.setStatus(OrderStatus.PAY_SUCCESS);
			orderInfo.setOrderNo(orderNo);
			if ((orderInfoDao.updateByCode(orderInfo) > 0) && (this.noticeInfoDao.insert(noticeInfo) > 0)) {
				List<String> accountList  =new ArrayList<String>();
				accountList.add(userInfo.getUserCode());
				XingePush.pushMessageForUsers(accountList, title, content, NoticeType.PAY_NOTICE, orderNo);
				return 200;
			} else {
				return 500;
			}
		} else {
			return 500;
		}
	}

	/**
	 * 订单详情
	 */
	public OrderDetail getOrderDetail(OrderInfo orderInfo) {
		String code = orderInfo.getGoodsCode();
		String studentCode = orderInfo.getStudentCode();
		StudentInfo studentInfo = this.studentInfoDao.findByCode(studentCode);

		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setStudentName(studentInfo.getStudentName());
//		orderDetail.setTelephone(studentInfo.getTelephone());
		orderDetail.setBookTime(DataUtil.dateToStr("yyyy-MM-dd hh:MM", orderInfo.getCreateTime()));
		orderDetail.setOrderNo(orderInfo.getOrderNo());
		orderDetail.setOriginPrice(orderInfo.getPrice());
		orderDetail.setRealPrice(orderInfo.getAmount());
		// 活动订单详情
		if (OrderType.ACTIVITY.equals(orderInfo.getOrderType())) {
			ActivityInfo activityInfo = this.activityInfoDao.findByCode(code);
			orderDetail.setAddress(activityInfo.getAddress());
			orderDetail.setName(activityInfo.getActivityName());
			orderDetail.setTimeDetail(DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getBeginTime()) + "-"
					+ DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getEndTime()));
			// 课程订单详情
		} else if (OrderType.COURSE.equals(orderInfo.getOrderType())) {
			CourseInfo courseInfo = this.courseInfoDao.findByCode(code);
			orderDetail.setAddress(courseInfo.getAddress());
			orderDetail.setName(courseInfo.getCourseName());
	//		orderDetail.setTimeDetail(courseInfo.getCourseTimeDetail());
			// 不存在业务
		} else {
			return null;

		}
		return orderDetail;
	}
 
	/**
	 * 获取用户订单列表
	 */
	public List<OrderModel> getUserOrderList(String userCode, String orderType, int index) {
		OrderInfo orderInfo = new OrderInfo();
		orderInfo.setUserCode(userCode);
		orderInfo.setOrderType(orderType);

		Datagrid<OrderInfo> datagrid = new Datagrid<OrderInfo>();
		datagrid.setIndex(index);
		datagrid.setSort(PageConstants.DESC);
		datagrid.pagenation();
		datagrid.setT(orderInfo);

		datagrid = this.page(datagrid);
		List<OrderInfo> orderInfos = datagrid.getResult();
		List<OrderModel> orderModels = new ArrayList<OrderModel>();
		// 活动订单列表
		if (OrderType.ACTIVITY.equals(orderType)) {
			for (OrderInfo temp : orderInfos) {
				String code = temp.getGoodsCode();
				ActivityInfo activityInfo = this.activityInfoDao.findByCode(code);
				if(activityInfo == null){
					System.out.println(code);
				}
				String imgUrl = activityInfo.getImgUrl();
				OrderModel orderModel = new OrderModel();
				orderModel.setAddress(activityInfo.getAddress());
				orderModel.setDateTime(DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getBeginTime()) + "-"
						+ DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getEndTime()));
				orderModel.setImgUrl(imgUrl);
				orderModel.setOrderNo(temp.getOrderNo());
				orderModel.setPrice(temp.getAmount());
				orderModel.setStatus(temp.getStatus());
				orderModel.setTitle(activityInfo.getActivityName());
				orderModel.setGoodsCode(activityInfo.getActivityCode());
				orderModels.add(orderModel);
			}
			// 课程订单列表
		} else if (OrderType.COURSE.equals(orderType)) {
			for (OrderInfo temp : orderInfos) {
				String code = temp.getGoodsCode();
				CourseInfo courseInfo = this.courseInfoDao.findByCode(code);
				String imgUrl = courseInfo.getImgUrl();
				/*if (imgCodes.contains(";")) {
					imgCodes = imgCodes.substring(0, imgCodes.indexOf(";"));
				}
				String imgUrl = this.imgInfoDao.getImgUrl(imgCodes);*/

				OrderModel orderModel = new OrderModel();
				orderModel.setAddress(courseInfo.getAddress());
				orderModel.setDateTime(DataUtil.dateToStr("yyyy.MM.dd", courseInfo.getBeginTime()) + "-"
						+ DataUtil.dateToStr("yyyy.MM.dd", courseInfo.getEndTime()));
				orderModel.setImgUrl(imgUrl);
				orderModel.setOrderNo(temp.getOrderNo());
				orderModel.setPrice(courseInfo.getDiscountPrice());
				orderModel.setStatus(temp.getStatus());
				orderModel.setTitle(courseInfo.getCourseName());
				orderModel.setGoodsCode(courseInfo.getCourseCode());
				orderModels.add(orderModel);
			}
			// 不存在业务
		} else {
			return null;
		}
		return orderModels;
	}
	/**
	 * 获取用户活动订单列表
	 */
	 public List<OrderModel> getActivityOrderList(String userCode, int index){
		    /*OrderInfo orderInfo = new OrderInfo();
			orderInfo.setUserCode(userCode);
			orderInfo.setOrderType(OrderType.ACTIVITY);

			Datagrid<OrderInfo> datagrid = new Datagrid<OrderInfo>();
			datagrid.setIndex(index);
			datagrid.setSort(PageConstants.DESC);
			datagrid.pagenation();
			datagrid.setT(orderInfo);

			datagrid = this.page(datagrid);
			List<OrderInfo> orderInfos = datagrid.getResult();         
			List<OrderModel> orderModels = new ArrayList<OrderModel>();
			// 活动订单列表
			for (OrderInfo temp : orderInfos) {
				String code = temp.getGoodsCode();
				ActivityInfo activityInfo = this.activityInfoDao.findByCode(code);
				if(activityInfo == null){
					System.out.println(code);
				}
				String imgUrl = activityInfo.getImgUrl();
				OrderModel orderModel = new OrderModel();
				orderModel.setAddress(activityInfo.getAddress());
				orderModel.setDateTime(DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getBeginTime()) + "-"
						+ DataUtil.dateToStr("yyyy.MM.dd", activityInfo.getEndTime()));
				orderModel.setImgUrl(imgUrl);
				orderModel.setOrderNo(temp.getOrderNo());
				orderModel.setPrice(temp.getAmount());
				orderModel.setStatus(temp.getStatus());
				orderModel.setTitle(activityInfo.getActivityName());
				orderModel.setGoodsCode(activityInfo.getActivityCode());
				orderModels.add(orderModel);
			}
				// 课程订单列表
			return orderModels;*/
		    OrderInfo orderInfo = new OrderInfo();
			orderInfo.setUserCode(userCode);
			orderInfo.setOrderType(OrderType.COURSE);

			Datagrid<OrderInfo> datagrid = new Datagrid<OrderInfo>();
			datagrid.setIndex(index);
			datagrid.setSort(PageConstants.DESC);
			datagrid.pagenation();
			datagrid.setT(orderInfo);

			datagrid = this.page(datagrid);
			List<OrderInfo> orderInfos = datagrid.getResult();         
			List<OrderModel> orderModels = new ArrayList<OrderModel>();
			// 活动订单列表
			for (OrderInfo temp : orderInfos) {
				String code = temp.getGoodsCode();
				CourseInfo courseInfo = this.courseInfoDao.findByCode(code);
				if(courseInfo == null){
					System.out.println(code);
				}
				String imgUrl = courseInfo.getImgUrl();
				OrderModel orderModel = new OrderModel();
				orderModel.setAddress(courseInfo.getAddress());
				orderModel.setDateTime(DataUtil.dateToStr("yyyy.MM.dd", courseInfo.getBeginTime()) + "-"
						+ DataUtil.dateToStr("yyyy.MM.dd", courseInfo.getEndTime()));
				orderModel.setImgUrl(imgUrl);
				orderModel.setOrderNo(temp.getOrderNo());
				orderModel.setPrice(temp.getAmount());
				orderModel.setStatus(temp.getStatus());
				orderModel.setTitle(courseInfo.getCourseName());
				orderModel.setGoodsCode(courseInfo.getCourseCode());
				orderModels.add(orderModel);
			}
				// 课程订单列表
			return orderModels;
		 
	 }
	 /**
	  * 获取用户课程订单列表
	  */
	 public List<OrderModel> getCourseOrderList(String userCode , int index){
		    OrderInfo orderInfo = new OrderInfo();
			orderInfo.setUserCode(userCode);
			orderInfo.setOrderType(OrderType.EXP_COURSE);
            Datagrid<OrderInfo> datagrid = new Datagrid<OrderInfo>();
			datagrid.setIndex(index);
			datagrid.setSort(PageConstants.DESC);
			datagrid.pagenation();
			datagrid.setT(orderInfo);
            datagrid = this.page(datagrid);
			List<OrderInfo> orderInfos = datagrid.getResult();
			List<OrderModel> orderModels = new ArrayList<OrderModel>();
			// 活动订单列表
			for (OrderInfo temp : orderInfos) {
				String code = temp.getGoodsCode();
			//	CourseInfo courseInfo = this.courseInfoDao.findByCode(code);
				ExperienceCourse experienceCourse = experienceCourseDao.findByCode(code);
				String imgUrl = experienceCourse.getImgUrl();
				/*if (imgCodes.contains(";")) {
					imgCodes = imgCodes.substring(0, imgCodes.indexOf(";"));
				}
				String imgUrl = this.imgInfoDao.getImgUrl(imgCodes);*/
                OrderModel orderModel = new OrderModel();
				orderModel.setAddress(experienceCourse.getAddress());
				orderModel.setDateTime(DataUtil.dateToStr("yyyy.MM.dd", experienceCourse.getBeginTime()) + "-"
						+ DataUtil.dateToStr("yyyy.MM.dd", experienceCourse.getEndTime()));
				orderModel.setImgUrl(imgUrl);
				orderModel.setOrderNo(temp.getOrderNo());
		//		orderModel.setPrice(experienceCourse.getDiscountPrice());
				orderModel.setStatus(temp.getStatus());
				orderModel.setTitle(experienceCourse.getCourseName());
				orderModel.setGoodsCode(experienceCourse.getCourseCode());
				orderModels.add(orderModel);
			}
			// 不存在业务
		    return orderModels;
		 
	 }

	/*
	 * 创建课程订单
	 */
	public Map<String, Object> createCourseOrder(String userCode,CourseInfo courseInfo,String stuCode,String couponCode,int clientAmount,
			String remark) {
	    // 获取折扣金额
		int discount = 0;
		// 计算这算之后的金额
		// 验证客户端计算结果，验证依据待定
		Map<String, Object> resultMap = new HashMap<String, Object>();
        OrderInfo orderInfo = new OrderInfo();
		orderInfo.setGoodsCode(courseInfo.getCourseCode());
		orderInfo.setOrderNo(CodeGeneratorUtils.getCode(20));
		orderInfo.setOrderType(OrderType.COURSE);
		orderInfo.setPrice(courseInfo.getPrice());
		orderInfo.setNum(1);
		orderInfo.setUserCode(userCode);
		orderInfo.setRemarks(remark);
		orderInfo.setStudentCode(stuCode);
		orderInfo.setUserCode(userCode);
		orderInfo.setAmount(clientAmount*100);
		orderInfo.setStatus(OrderStatus.OBLIGATION);
		orderInfo.setCreateTime(new Date());
		orderInfo.setModifyTime(new Date());
		orderInfo.setCouponCode(couponCode);
	
		orderInfoDao.insert(orderInfo);// 订单入库
		resultMap.put("amount", clientAmount);// 总金额
		resultMap.put("orderNo", orderInfo.getOrderNo());// 订单号
		resultMap.put("subject", courseInfo.getCourseTypeName());
		resultMap.put("body", courseInfo.getCourseName());
		System.out.println("---->>>>>444");
		System.out.println("---->>>>>444444");
		System.out.println("4444");
		return resultMap;
	}


	/*
	 * 查询未过期的订单
	 */
	public List<OrderInfo> findNotDeletedOrder(String status) {
		return orderInfoDao.findNotDeletedOrder(status);
	}

	/*
	 * 删除过期的订单
	 */
	public void deletOutTimeOrder(String orderCode) {
		OrderInfo temp=orderInfoDao.findByCode(orderCode);
		String orderNo = temp.getOrderNo();
		String goodsCode = temp.getGoodsCode();
		String orderType = temp.getOrderType();
		String couponCode = temp.getCouponCode();
		
		
		
		//报名课程  报名人数减一
		if(OrderType.COURSE.equals(orderType)){
			CourseInfo courseInfo = this.courseInfoDao.findByCode(goodsCode);
			courseInfo.setJoinNum((courseInfo.getJoinNum() - 1));
			this.courseInfoDao.updateByCode(courseInfo);
		}
		
		if (!StringUtils.isBlank(couponCode)) {
			//优惠券状态还原
			CouponInfo couponInfo = this.couponInfoDao.findByCode(couponCode);
			couponInfo.setStatus(CouponStatus.UNUSED);
			this.couponInfoDao.updateByCode(couponInfo);
		}
		this.orderInfoDao.deleteByCode(orderNo);
		
	}

	/**
	 *根据产品编码 更新订单状态
	 */
	public void updateOrderStatus(String goodsCode, String status) {
		OrderInfo orderInfo = new OrderInfo();
		orderInfo.setGoodsCode(goodsCode);
		List<OrderInfo> orderInfos = this.findAll(orderInfo);
		if(orderInfos != null && orderInfos.size() > 0){
			for(OrderInfo temp: orderInfos){
				temp.setStatus(status);
				this.updateByCode(temp);
			}
		}
	}

	/**
	 * 用户预约
	 */
	public boolean userAppoint(OrderInfo orderInfo) {
		ActivityInfo activityInfo = null;
		CourseInfo courseInfo = null;
		if(OrderType.ACTIVITY.equals(orderInfo.getOrderType())){
			activityInfo = this.activityInfoDao.findByCode(orderInfo.getGoodsCode());
			orderInfo.setAmount(activityInfo.getDiscountPrice());
			orderInfo.setRemarks("活动预约");
		}
		else if(OrderType.EXP_COURSE.equals(orderInfo.getOrderType())){
			courseInfo  =this.courseInfoDao.findByCode(orderInfo.getGoodsCode());
			orderInfo.setAmount(courseInfo.getDiscountPrice());
			orderInfo.setRemarks("课程预约");
		}
		orderInfo.setCreateTime(new Date());
		orderInfo.setModifyTime(new Date());
		orderInfo.setNum(1);
		orderInfo.setOrderNo(CodeGeneratorUtils.getCode(20));
		orderInfo.setPrice(orderInfo.getAmount());
		orderInfo.setStatus(OrderStatus.APPOINTMENT);
		orderInfo.setIsFree("T");
		orderInfo.setIsOnline("F");
		int result = 0;
		result = this.insert(orderInfo);
		if(result > 0){
			return true;
		}
		return false;
	}
	
	public Object payCourseOrder(String userCode, String courseCode, String openId,String orderNo ) {
		try {
			CourseInfo courseInfo = this.courseInfoDao.findByCode(courseCode);
			OrderInfo orderInfo = this.orderInfoDao.findByCode(orderNo);
			UserInfo userInfo = this.userInfoDao.findByCode(userCode);
			//获取支付所用的charge
			PayModel payModel = new PayModel();
			payModel.setAmount(orderInfo.getAmount());
			payModel.setChannel("wx_pub");
			payModel.setOrderNo(orderNo);
			payModel.setSubject("课程购买");
			payModel.setBody("电话号码：" + userInfo.getTelephone() + "，购买课程:" + courseInfo.getCourseName());
			payModel.setOpenId(openId);
			Charge charge = WxpubCharge.getWxCharge(payModel);
			//创建订单  状态为待付款
			/*OrderInfo orderInfo = new OrderInfo();
			orderInfo.setAmount(goodsInfo.getPrice());*/
//			orderInfo.setBeginTime(DateUtils.dateToStr("yyyy-MM-dd", goodsInfo.getBeginTime()));
//			orderInfo.setBookingTime(DateUtils.formatDate("yyyy-MM-dd", new Date()));
//			orderInfo.setBuyerCode(userCode);
/*			orderInfo.setBuyerName(userInfo.getTelphone());
			orderInfo.setChargeId(charge.getId());
			orderInfo.setCreateTime(new Date());
			orderInfo.setDeleted("F");                    */
//			orderInfo.setEndTime(DateUtils.dateToStr("yyyy-MM-dd", goodsInfo.getEndTime()));
//			orderInfo.setGoodsCode(courseCode);
//			orderInfo.setGoodsName(goodsInfo.getGoodsName());
//			orderInfo.setOrderName(goodsInfo.getGoodsName());
//			orderInfo.setOrderNo(orderNo);
//			orderInfo.setOrderType(goodsInfo.getGoodsType());
//			orderInfo.setSellerCode(goodsInfo.getUserCode());
			/*orderInfo.setStatus("1");
			orderInfo.setNum(1);
			orderInfo.setPrice(goodsInfo.getPrice());
			this.orderInfoDao.insert(orderInfo);*/
			return charge;
		} catch (Exception e) {
			return "null";
		}
	}
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, isolation = Isolation.READ_COMMITTED)
	public Object orderPaySuccess(String orderNo ,String courseCode) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("error");
		//订单状态更改    付款成功
		OrderInfo orderInfo = new OrderInfo();
	    orderInfo.setOrderNo(orderNo);
		orderInfo = this.orderInfoDao.findByCode(orderNo);
		//更改为已付款
		orderInfo.setStatus("00");
        CourseInfo courseInfo = this.courseInfoDao.findByCode(orderInfo.getGoodsCode());
		//优惠劵的状态改变
		if (courseInfo == null) {
			System.out.println(1233123);
		}
		//课程的报名人数改变
		courseInfo.setJoinNum(courseInfo.getJoinNum() + 1);
		if(courseInfo.getJoinNum() + 1==courseInfo.getMaxJoinNum()){
			courseInfo.setStatus("01");
		}
		//更新报名人数
		courseInfo.setCourseCode(courseCode);
        courseInfoDao.updateByCode(courseInfo);
        //修改当前优惠券状态
        String couponInfoCode =  orderInfo.getCouponCode();
    	CouponInfo couponInfo = this.couponInfoDao.findByCode(couponInfoCode);
    	if(couponInfo != null){
			couponInfo.setStatus(CouponStatus.USED);
			couponInfo.setCouponCode(couponInfoCode);
			couponInfoDao.updateByCode(couponInfo);
    	}
	    //  更改课程中的报名人数
		//  更改状态 
		if (this.orderInfoDao.updateByCode(orderInfo) > 0) {
			 return "activMy.html?userCode="+orderInfo.getUserCode()+"&type=cou";
		}
		modelAndView.addObject("result", "错误");
		return modelAndView;
	}
}
