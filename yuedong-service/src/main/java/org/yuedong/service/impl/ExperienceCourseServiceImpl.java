package org.yuedong.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.yuedong.dao.BaseDao;
import org.yuedong.dao.ExperienceCourseDao;
import org.yuedong.dao.UserCollectionDao;
import org.yuedong.model.ExperienceCourse;
import org.yuedong.model.UserCollection;
import org.yuedong.service.ExperienceCourseService;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.vo.ExperienceCourseModel;
import org.yuedong.vo.ExperienceDetail;

@Service("experienceCourseService")
public class ExperienceCourseServiceImpl extends BaseServiceImpl<ExperienceCourse> implements ExperienceCourseService {

	@Autowired
	private ExperienceCourseDao experienceCourseDao;
	@Autowired
	private UserCollectionDao userCollectionDao;
	
	@Autowired
	@Qualifier("experienceCourseDao")
	public void setBaseDao(BaseDao<ExperienceCourse> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 获取体验课首页，体验课实体信息
	 */
	public List<ExperienceCourseModel> getCourseIndex(int index) {
		Datagrid<ExperienceCourse> datagrid = new Datagrid<ExperienceCourse>();
		datagrid.setIndex(index);
		datagrid.setOrderBy("id");
		datagrid.setSort("desc");
		datagrid.pagenation();
        datagrid = this.page(datagrid);
		List<ExperienceCourse> experienceCourse = datagrid.getResult();
		List<ExperienceCourseModel> experienceCourseList = new ArrayList<ExperienceCourseModel>();
		if (experienceCourse != null && experienceCourse.size() > 0) {
			for (ExperienceCourse ExperienceCourse : experienceCourse) {
				ExperienceCourseModel experienceCourseModel = new ExperienceCourseModel();
				String imgUrl = ExperienceCourse.getImgUrl();
				experienceCourseModel.setCourseCode(ExperienceCourse.getCourseCode());
				experienceCourseModel.setCourseName(ExperienceCourse.getCourseName());
				experienceCourseModel.setImgUrl(imgUrl);
				experienceCourseModel.setStatus(ExperienceCourse.getStatus());
				experienceCourseModel.setCourseTypeName(ExperienceCourse.getCourseTypeName());
				experienceCourseList.add(experienceCourseModel);
			}
		}
		return experienceCourseList;
	}
	
	/**
	 * 获取体验课详情
	 */
	public ExperienceDetail getEcourseDetail(String userCode, ExperienceCourse experienceCourse) {

		String imgUrl = experienceCourse.getImgUrl();
        /*	
	        用户收藏表
	    UserCollection userCollection = new UserCollection();
		userCollection.setUserCode(userCode);
		userCollection.setTargetCode(experienceCourse.getCourseCode());
		List<UserCollection> list = this.userCollectionDao.findAll(userCollection);*/
		ExperienceDetail experienceDetail = new ExperienceDetail();
        experienceDetail.setCourseName(experienceCourse.getCourseName());
		experienceDetail.setCourseCode(experienceCourse.getCourseCode());
		experienceDetail.setAddress(experienceCourse.getAddress());
		experienceDetail.setBeginTime(DataUtil.dateToStr("yyyy.MM.dd", experienceCourse.getBeginTime()));
		experienceDetail.setEndTime(DataUtil.dateToStr("yyyy.MM.dd", experienceCourse.getEndTime()));
		experienceDetail.setContent(experienceCourse.getRemarks());
        experienceDetail.setImgUrl(imgUrl);
		experienceDetail.setTelephone(experienceCourse.getTelephone());
		experienceDetail.setCourseTypeName(experienceCourse.getCourseTypeName());
		experienceDetail.setCourseTimeDetail(experienceCourse.getCourseTimeDetail());
		/*experienceDetail.setIsCollect("F");
		if (list != null && list.size() > 0) { 
			experienceDetail.setIsCollect("T");
		}*/
		if(StringUtils.isBlank(userCode)){
			experienceDetail.setIsCollect("F");
		}
		experienceDetail.setStatus(experienceCourse.getStatus());
		return experienceDetail;
	}
	
}
