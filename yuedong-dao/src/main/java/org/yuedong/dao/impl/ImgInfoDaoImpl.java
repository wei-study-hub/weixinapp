package org.yuedong.dao.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.ImgInfo;
import org.yuedong.utils.MemcachedUtils;
import org.yuedong.dao.ImgInfoDao;

@Repository("imgInfoDao")
public class ImgInfoDaoImpl extends BaseDaoImpl<ImgInfo> implements ImgInfoDao {

	/**
	 * 根据图片编码获取图片地址
	 */
	public String getImgUrl(String imgCode) {
		if (StringUtils.isBlank(imgCode)) {
			return null;
		}
		ImgInfo imgInfo = this.findByCode(imgCode);
		if (imgInfo != null) {
			return imgInfo.getImgUrl();
		}
		return null;
	}

	/**
	 * 获取多张图片地址
	 */
	public String getImgUrls(String imgCodes) {
		String imgUrls = "";
		String imgCode[] = imgCodes.split(";");
		for (String code : imgCode) {
			imgUrls += this.getImgUrl(code) + ";";
		}
		imgUrls = imgUrls.substring(0, imgUrls.lastIndexOf(";"));
		return imgUrls;
	}

}
