package org.yuedong.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;


import org.yuedong.dao.NoticeInfoDao;
import org.yuedong.model.NoticeInfo;
import org.yuedong.service.NoticeInfoService;
import org.yuedong.dao.BaseDao;
import org.yuedong.service.impl.BaseServiceImpl;

@Service("noticeInfoService")
public class NoticeInfoServiceImpl extends BaseServiceImpl<NoticeInfo> implements NoticeInfoService {

	@Autowired
	private NoticeInfoDao noticeInfoDao;
	
	@Autowired
	@Qualifier("noticeInfoDao")
	public void setBaseDao(BaseDao<NoticeInfo> baseDao) {
		super.setBaseDao(baseDao);
	}


	
}
