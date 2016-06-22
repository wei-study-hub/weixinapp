package org.yuedong.service;

import org.yuedong.model.ImgInfo;
import org.yuedong.service.BaseService;

public interface ImgInfoService extends BaseService<ImgInfo>{
	/**
	 * 根据一个图片编码获取图片地址
	 * @param imgCode 图片编码
	 * @return String 图片地址
	 */
	public String getImgUrl(String imgCode);
	/**
	 * 获取多张图片地址
	 * @param imgCodes 图片编码以分号分隔 
	 * @return 图片地址以分号分隔
	 */
	public String getImgUrls(String imgCodes);
}
