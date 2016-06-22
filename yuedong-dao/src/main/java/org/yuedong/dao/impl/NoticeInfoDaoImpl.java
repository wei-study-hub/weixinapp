package org.yuedong.dao.impl;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.NoticeInfo;
import org.yuedong.dao.NoticeInfoDao;

@Repository("noticeInfoDao")
public class NoticeInfoDaoImpl extends BaseDaoImpl<NoticeInfo> implements NoticeInfoDao{
	
}
