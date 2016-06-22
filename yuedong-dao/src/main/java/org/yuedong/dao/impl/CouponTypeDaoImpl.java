package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.CouponType;
import org.yuedong.dao.CouponTypeDao;

@Repository("couponTypeDao")
public class CouponTypeDaoImpl extends BaseDaoImpl<CouponType> implements CouponTypeDao{
	
}
