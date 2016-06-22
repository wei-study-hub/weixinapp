package org.yuedong.service;

import java.util.List;

import org.yuedong.model.CouponInfo;
import org.yuedong.service.BaseService;
import org.yuedong.vo.CouponModel;

import com.sun.mail.imap.protocol.ListInfo;

public interface CouponInfoService extends BaseService<CouponInfo>{
	/**
	 * 获取用户未使用的优惠券数量
	 * @param userCode 用户编码
	 * @return int 未使用优惠券数量
	 */
	public int getUnusedCouponNum(String userCode);
	
	/**
	  * 获取用户特定类型的优惠券列表
	 * @param userCode 用户编码
	 * @param goodsTypeCode 产品编码
	 * @param price 价格 
	 * @return
	 */
	public List<CouponInfo> getCouponListOnSpecifyType(String userCode, String goodsTypeCode, int price);
	
	/**
	 * 根据优惠券的code码获取优惠金额
	 */
	public int getCouponMoney(String couponCode);
	
	/**
	 * 我的优惠券列表 
	 * @param userCode 用户编码
	 * @return List<CouponModel> 优惠券列表
	 */
	public List<CouponModel> getUserCouponList(String userCode);
	
}
