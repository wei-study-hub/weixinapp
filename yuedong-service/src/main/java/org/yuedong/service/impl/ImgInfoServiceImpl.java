package org.yuedong.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;

import org.yuedong.dao.ImgInfoDao;
import org.yuedong.model.ImgInfo;
import org.yuedong.service.ImgInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

/**
 * 图片对象业务访问类
 * 
 * @author 黑夜骑士
 */
@Service("imgInfoService")
public class ImgInfoServiceImpl extends BaseServiceImpl<ImgInfo> implements ImgInfoService {

	@Autowired
	private ImgInfoDao imgInfoDao;

	@Autowired
	@Qualifier("imgInfoDao")
	public void setBaseDao(BaseDao<ImgInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 根据图片编码获取图片地址
	 */
	public String getImgUrl(String imgCode) {
		return this.imgInfoDao.getImgUrl(imgCode);
	}

	/**
	 * 获取多张图片地址
	 */
	public String getImgUrls(String imgCodes) {
		return this.imgInfoDao.getImgUrls(imgCodes);
	}

}
