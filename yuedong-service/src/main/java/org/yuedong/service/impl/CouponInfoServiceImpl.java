package org.yuedong.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.CouponInfoDao;
import org.yuedong.dao.CouponTypeDao;
import org.yuedong.model.CouponInfo;
import org.yuedong.model.CouponType;
import org.yuedong.service.CouponInfoService;
import org.yuedong.constants.CouponStatus;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;
import org.yuedong.vo.CouponModel;

import com.alibaba.fastjson.JSON;

@Service("couponInfoService")
public class CouponInfoServiceImpl extends BaseServiceImpl<CouponInfo> implements CouponInfoService {

	@Autowired
	private CouponInfoDao couponInfoDao;
	@Autowired
	private CouponTypeDao couponTypeDao;
	
	@Autowired
	@Qualifier("couponInfoDao")
	public void setBaseDao(BaseDao<CouponInfo> baseDao) {
		super.setBaseDao(baseDao);
	}

	/**
	 * 获取用户未使用的优惠券数量
	 */
	public int getUnusedCouponNum(String userCode) {
		CouponInfo couponInfo = new CouponInfo();
		couponInfo.setUserCode(userCode);
		couponInfo.setStatus(CouponStatus.UNUSED);
		return this.count(couponInfo);
	}


	/**
	 * 获取用户特定类型的优惠券列表（如适用于篮球、羽毛球）
	 */
	public List<CouponInfo> getCouponListOnSpecifyType(String userCode, String goodsTypeCode, int price) {
		CouponInfo couponInfo = new CouponInfo();
		couponInfo.setUserCode(userCode);
		couponInfo.setStatus(CouponStatus.UNUSED);
		List<CouponInfo> userCoupons = this.couponInfoDao.findAll(couponInfo);
		List<CouponInfo> tempCoupons = new ArrayList<CouponInfo>();
		for (CouponInfo temp : userCoupons) {
			CouponType couponType = this.couponTypeDao.findByCode(temp.getCouponTypeCode());
			if(couponType != null){
				if(price >= couponType.getConsumeAmount()){
					if("8".equals(couponType.getScopeTypeCode())){
						tempCoupons.add(temp);
					}
					if (couponType.getScopeTypeCode().contains(goodsTypeCode)) {
						tempCoupons.add(temp);
					}
				}
			}
		}
		System.out.println(JSON.toJSONString(tempCoupons));
		return tempCoupons;
	}
	

	/**
	 * 获取当前优惠券的优惠金额
	 */
	public int getCouponMoney(String couponCode) {
		String typeCode=couponInfoDao.findByCode(couponCode).getCouponTypeCode();
		CouponType couponType=couponTypeDao.findByCode(typeCode);
		return couponType.getDiscount();
	}

	public List<CouponModel> getUserCouponList(String userCode) {
		// TODO Auto-generated method stub
		return null;
	}

}
