package org.yuedong.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;

import org.yuedong.dao.UserCollectionDao;
import org.yuedong.model.ActivityInfo;
import org.yuedong.model.CourseInfo;
import org.yuedong.model.UserCollection;
import org.yuedong.service.UserCollectionService;
import org.yuedong.constants.CollectType;
import org.yuedong.dao.ActivityInfoDao;
import org.yuedong.dao.BaseDao;
import org.yuedong.dao.CourseInfoDao;
import org.yuedong.dao.ImgInfoDao;
import org.yuedong.service.impl.BaseServiceImpl;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.vo.CollectModel;

@Service("userCollectionService")
public class UserCollectionServiceImpl extends BaseServiceImpl<UserCollection> implements UserCollectionService {

	@Autowired
	private UserCollectionDao userCollectionDao;
	@Autowired
	private ImgInfoDao imgInfoDao;
	@Autowired
	private ActivityInfoDao activityInfoDao;
	@Autowired
	private CourseInfoDao courseInfoDao;

	@Autowired
	@Qualifier("userCollectionDao")
	public void setBaseDao(BaseDao<UserCollection> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 获取用户收藏列表
	 */
	public List<CollectModel> getUserCollectList(String userCode, String collectType, int index) {		
		UserCollection userCollection = new UserCollection();
		userCollection.setUserCode(userCode);
		userCollection.setCollectType(collectType);
		Datagrid<UserCollection> datagrid = new Datagrid<UserCollection>();
		datagrid.setIndex(index);
		datagrid.setSort("desc");
		datagrid.setT(userCollection);
		datagrid.pagenation();
		datagrid = this.page(datagrid);
		List<UserCollection> collections = datagrid.getResult();

		List<CollectModel> collectModels = new ArrayList<CollectModel>();
		if (collections != null && collections.size() > 0) {
			if (CollectType.ACTIVITY.equals(collectType)) {
				for (UserCollection temp : collections) {
					CollectModel collectModel = new CollectModel();
					ActivityInfo activityInfo = this.activityInfoDao.findByCode(temp.getTargetCode());
					String imgUrl = activityInfo.getImgUrl();
					collectModel.setCode(activityInfo.getActivityCode());
					collectModel.setName(activityInfo.getActivityName());
					collectModel.setDiscount(activityInfo.getDiscountPrice());
					collectModel.setPrice(activityInfo.getPrice());
					collectModel.setImgUrl(imgUrl);
					collectModel.setStatus(activityInfo.getStatus());
					collectModels.add(collectModel);
				}
			}
			else if (CollectType.COURSE.equals(collectType)) {
				 for (UserCollection temp : collections) {
					CollectModel collectModel = new CollectModel();
					CourseInfo courseInfo = this.courseInfoDao.findByCode(temp.getTargetCode());
					String imgUrl = courseInfo.getImgUrl();
					/*if (imgCode.contains(";")) {
						imgCode = imgCode.substring(0, imgCode.indexOf(";"));
					}
					String imgUrl = this.imgInfoDao.getImgUrl(imgCode);*/
					collectModel.setCode(courseInfo.getCourseCode());
					collectModel.setAddress(courseInfo.getAddress());
					collectModel.setDate(DataUtil.dateToStr("yyyy.MM.dd", courseInfo.getBeginTime()) + "-"
								+ DataUtil.dateToStr("yyyy.MM.dd", courseInfo.getEndTime()));
					collectModel.setDiscount(courseInfo.getDiscountPrice());
					collectModel.setDistince(courseInfo.getServiceAreasName());
					collectModel.setImgUrl(imgUrl);
					collectModel.setName(courseInfo.getCourseName());
					collectModel.setStatus(courseInfo.getStatus());
					collectModel.setType(courseInfo.getCourseTypeName());
					collectModel.setPrice(courseInfo.getPrice());
					collectModels.add(collectModel);
				}
			}
				
		}
		return collectModels;
}

}
