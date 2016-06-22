package org.yuedong.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;

import org.yuedong.dao.CourseInfoDao;
import org.yuedong.dao.CourseTypeDao;
import org.yuedong.dao.ImgInfoDao;
import org.yuedong.dao.TrainerInfoDao;
import org.yuedong.dao.UserCollectionDao;
import org.yuedong.model.CommonTypeInfo;
import org.yuedong.model.CourseInfo;
import org.yuedong.model.CourseType;
import org.yuedong.model.TrainerInfo;
import org.yuedong.model.UserCollection;
import org.yuedong.service.CourseInfoService;
import org.yuedong.service.CourseTypeService;
import org.yuedong.service.ImgInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.vo.CourseDetials;
import org.yuedong.vo.CourseModel;
import org.yuedong.vo.TrainerModel;

import com.alibaba.fastjson.JSON;

@Service("courseInfoService")
public class CourseInfoServiceImpl extends BaseServiceImpl<CourseInfo> implements CourseInfoService {
	@Autowired
	private CourseInfoDao courseInfoDao;
	@Autowired
	private CourseTypeService courseTypeService;
	@Autowired
	private ImgInfoDao imgInfoDao;
	@Autowired
	private TrainerInfoDao trainerInfoDao;
	@Autowired
	private UserCollectionDao userCollectionDao;
	@Autowired
	private ImgInfoService imgInfoService;

	@Autowired
	@Qualifier("courseInfoDao")
	public void setBaseDao(BaseDao<CourseInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 获取首页所有 （ 课程/适用人群 ） 类型 返回按 课程类型下拥有数量的个数 降序排列
	 */
	public List<CommonTypeInfo> getAllCommonType() {
		Datagrid<CourseType> datagrid = new Datagrid<CourseType>();
		datagrid.setOrderBy("id");
		datagrid.setSort("asc");
		datagrid.setT(new CourseType());
		datagrid = this.courseTypeService.page(datagrid);
		List<CourseType> courseTypeList = datagrid.getResult();
		List<CommonTypeInfo> commonList = new ArrayList<CommonTypeInfo>();
        for (CourseType temp : courseTypeList) {
			if ("其他".equals(temp.getCourseTypeName())) {
				continue;
			}
			CommonTypeInfo commInfo = new CommonTypeInfo();
			commInfo.setType(temp.getCourseTypeCode());
			commInfo.setClassName(temp.getCourseTypeName());
			commInfo.setTitle(temp.getCourseTypeTitle());
			commInfo.setIconUrl(temp.getImgUrl());
			commInfo.setClassCode(temp.getCourseTypeCode());
			if ("全部".equals(temp.getCourseTypeName())) {
				temp.setCourseTypeCode(null);
			}
			CourseInfo courseInfo = new CourseInfo();
			courseInfo.setCourseTypeCode(temp.getCourseTypeCode());
			commInfo.setClassNum(courseInfoDao.count(courseInfo));
			commonList.add(commInfo);
		}
		// Collections.sort(commonList);
		return commonList;
	}

	/**
	 * 根据筛选条件获取课程列表
	 */
	public List<CourseModel> findAllCourseByCon(CourseInfo courseInfo) {
		List<CourseInfo> list = courseInfoDao.findAllCourse(courseInfo);
		List<CourseModel> resultList = new ArrayList<CourseModel>();
		for (CourseInfo temp : list) {
			resultList.add(getModelInfo(temp));
		}
		return resultList;
	}

	/**
	 * 课程搜索
	 */
	public List<CourseModel> searchCourse(String paramKey) {
		// paramKey
		/*
		 * 1,按课程名称搜索 2,按教练搜索 3,按区域搜索 4,按详细地址搜索
		 */
		// Map<String, CourseInfo> resultMap=new HashMap<String,
		// CourseInfo>();//搜索结果存放
		List<CourseInfo> list = courseInfoDao.searchByCourseKey(paramKey);
		List<CourseModel> resultList = new ArrayList<CourseModel>();
		for (CourseInfo courseInfo : list) {
			resultList.add(getModelInfo(courseInfo));
		}
		return resultList;
	}

	/**
	 * 获取客户端展示的课程信息类
	 */
	public CourseDetials getCourseDetails(String userCode, String courseCode) {
		CourseInfo courseInfo = courseInfoDao.findByCode(courseCode);
		return getCourseDetials(userCode, courseInfo);
	}

	/*
	 * 通过课程详细信息类构造出客户端需要的CourseModel类
	 */
	public CourseModel getModelInfo(CourseInfo temp) {
		CourseModel modelInfo = new CourseModel();
		modelInfo.setAddress(temp.getServiceCityName()+temp.getServiceAreasName()+temp.getAddress());
		modelInfo.setBeginTime(DataUtil.dateToStr(DataUtil.yy_MMdd, temp.getBeginTime()));
		modelInfo.setCourseName(temp.getCourseName());
		modelInfo.setCourseType(temp.getCourseTypeCode());
		modelInfo.setCourseTypeName(temp.getCourseTypeName());
		modelInfo.setServiceAreaName(temp.getServiceAreasName());
		modelInfo.setPrice(temp.getPrice());
		modelInfo.setEndTime(DataUtil.dateToStr(DataUtil.yy_MMdd, temp.getEndTime()));
		modelInfo.setCourseCode(temp.getCourseCode());
		if (StringUtils.isBlank(temp.getImgUrl())) {
			modelInfo.setImgUrl(null);
		}
		modelInfo.setImgUrl(temp.getImgUrl());
		modelInfo.setCourseCode(temp.getCourseCode());
		return modelInfo;
	}

	/*
	 * 通过课程详细信息类构造出客户端需要的CourseDetials类
	 */
	private CourseDetials getCourseDetials(String userCode, CourseInfo temp) {
		CourseDetials modelInfo = new CourseDetials();
		modelInfo.setAddress(temp.getServiceCityName()+temp.getServiceAreasName()+temp.getAddress());
		modelInfo.setBeginTime(DataUtil.dateToStr(DataUtil.yy_MMdd, temp.getBeginTime()));
		modelInfo.setCourseName(temp.getCourseName());
		modelInfo.setPrice(temp.getPrice());
		modelInfo.setEndTime(DataUtil.dateToStr(DataUtil.yy_MMdd, temp.getEndTime()));
		String imgUrl = temp.getImgUrl();
		modelInfo.setImgUrl(imgUrl);
		
		modelInfo.setMaxJoinNum(temp.getMaxJoinNum());
		modelInfo.setJoinNum(temp.getJoinNum());
	//	modelInfo.setDetailTime(temp.getCourseTimeDetail());
		modelInfo.setTelephone(temp.getTelephone());
		List<TrainerModel> list = getTrainer(temp.getTrainerCode());
		modelInfo.setTrainerList(list);
		modelInfo.setLongitude(temp.getLongitude());
		modelInfo.setLatitude(temp.getLatitude());
		modelInfo.setScopeTypeCode(temp.getCourseTypeCode());
		// 根据课程code查询收藏表中是否已经存在该课程,默认为F：没有被收藏 T：已经被收藏
		if (StringUtils.isBlank(userCode)) {
			modelInfo.setIsCollect("F");
		} else {
			UserCollection uc = new UserCollection();
			uc.setTargetCode(temp.getCourseCode());
			uc.setUserCode(userCode);
			List<UserCollection> resultList = userCollectionDao.findAll(uc);
			if (resultList.isEmpty()) {
				modelInfo.setIsCollect("F");
			} else {
				modelInfo.setIsCollect("T");
			}

		}
		modelInfo.setStatus(temp.getStatus());
		modelInfo.setCourseCode(temp.getCourseCode());
		modelInfo.setRemark(temp.getRemarks());
		return modelInfo;
	}

	/*
	 * 获取当前状态为未结束的课程列表
	 */
	public List<CourseInfo> findNotEndCourse(String status) {
		// TODO Auto-generated method stub
		return courseInfoDao.findNotEndCourse(status);
	}

	/**
	 * 获取教练列表
	 * 
	 * @describle TODO
	 * @return List<TrainerInfo>
	 */
	private List<TrainerModel> getTrainer(String trainCodes) {
		String[] codes = trainCodes.split(";");
		List<TrainerModel> list = new ArrayList<TrainerModel>();
		for (String code : codes) {
			TrainerInfo trainer = trainerInfoDao.findByCode(code);
			if (trainer != null) {
				TrainerModel model = new TrainerModel();
				model.setTrainerCode(trainer.getTrainerCode());
				model.setTrainerName(trainer.getTrainerName());
				model.setTrainerImgUrl(trainer.getImgUrl());
			//	model.setTrainerTitle(trainer.getTitle());
				list.add(model);
			}
		}
		return list;
	}
}
