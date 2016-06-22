package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.CouponInfo;
import org.yuedong.dao.CouponInfoDao;

@Repository("couponInfoDao")
public class CouponInfoDaoImpl extends BaseDaoImpl<CouponInfo> implements CouponInfoDao{
	
}
