package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.CouponTypeDao;
import org.yuedong.model.CouponType;
import org.yuedong.service.CouponTypeService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("couponTypeService")
public class CouponTypeServiceImpl extends BaseServiceImpl<CouponType> implements CouponTypeService {

	@Autowired
	private CouponTypeDao couponTypeDao;
	
	@Autowired
	@Qualifier("couponTypeDao")
	public void setBaseDao(BaseDao<CouponType> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
