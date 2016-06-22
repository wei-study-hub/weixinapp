package org.yuedong.service;

import java.util.List;
import java.util.Map;

import org.yuedong.model.CourseInfo;
import org.yuedong.model.OrderInfo;
import org.yuedong.vo.ActivityOrderModel;
import org.yuedong.vo.OrderDetail;
import org.yuedong.vo.OrderModel;

import com.pingplusplus.model.Event;

public interface OrderInfoService extends BaseService<OrderInfo> {

	/**
	 * 获取用户未结束订单数量
	 * @param userCode 用户编码
	 * @param orderType 订单类型
	 * @return int 未结束订单数量
	 */
	public int getOngoingOrderNum(String userCode, String orderType);

	/**
	 * 创建活动订单
	 * 
	 * @param userCode 用户编码
	 * @param activityCode 活动编码
	 * @param activityTypeCode 活动类型编码
	 * @return ActivityOrderModel 活动订单模型
	 */
	public ActivityOrderModel createActivityOrder(String userCode, String activityCode, String activityTypeCode);

	/**
	 * 提交活动订单
	 * @param userCode 用户编码
	 * @param goodsCode 产品编码
	 * @param studentCode 学员编码
	 * @param couponCode 优惠券编码
	 * @param price 原价
	 * @param amount 实付价格
	 */
	public String intsertActivityOrder(String userCode, String goodsCode, String studentCode, String couponCode,
			String price, String amount, String orderNo, String remarks);
	/**
	 * 付款成功
	 * @param event
	 * @return
	 */
	public  Integer paySuccess(Event event);
	
	/**
	 * 订单详情
	 * @param orderInfo 订单模型
	 * @return OrderDetail 订单详情实体
	 */
	public OrderDetail getOrderDetail(OrderInfo orderInfo);

	/**
	 * 获取用户订单列表
	 * @param userCode 用户编码
	 * @param orderType 订单类型
	 * @param index 当前页码
	 * @return List<OrderModel> 订单实体列表
	 */
     public List<OrderModel> getUserOrderList(String userCode, String orderType, int index);  
     /**
 	 * 获取用户活动订单列表
 	 * @param userCode 用户编码
 	 * @param orderType 订单类型
 	 * @param index 当前页码
 	 * @return List<OrderModel> 订单实体列表
 	 */
	 public List<OrderModel> getActivityOrderList(String userCode, int index);  
	 /**
		 * 获取用户课程订单列表
		 * @param userCode 用户编码
		 * @param orderType 订单类型
		 * @param index 当前页码
		 * @return List<OrderModel> 订单实体列表
		 */
	 public List<OrderModel> getCourseOrderList(String userCode , int index);  

	/**
	 * @describle TODO
	 * @return Map<String,Object>
	 */
	public Map<String, Object> createCourseOrder(String userCode, CourseInfo courseInfo, String stuCode, String couponCode,int clientAmount,
			String remark);
	/**
	 * 
	 * @describle 查询所有未被删除的订单
	 * @return List<OrderInfo>
	 */
	public List<OrderInfo> findNotDeletedOrder(String status);
	/**
	 * 
	 * @param orderCode
	 */
	public void deletOutTimeOrder(String orderCode);
	
	/**
	 * 根据产品编码 更新订单状态 
	 * @param goodsCode
	 */
	public void updateOrderStatus(String goodsCode, String status);
	
	
	/**
	 * 用户预约
	 * @param orderInfo 预约订单
	 * @return boolean true 预约成功 false 预约失败
	 */
	public boolean userAppoint(OrderInfo orderInfo);
	/**
	 * 
	 * @param userCode
	 * @param courseCode
	 * @param openId
	 * @param orderNo
	 * @return
	 */
	public Object payCourseOrder(String userCode, String courseCode, String openId,String orderNo);
	/**
	 * 
	 * @param orderNo
	 * @param courseCode
	 * @return
	 */
	public Object orderPaySuccess(String orderNo , String courseCode);
}
