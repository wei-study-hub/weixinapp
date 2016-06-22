package org.yuedong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.yuedong.dao.impl.BaseDaoImpl;
import org.yuedong.model.OrderInfo;
import org.yuedong.dao.OrderInfoDao;

@Repository("orderInfoDao")
public class OrderInfoDaoImpl extends BaseDaoImpl<OrderInfo> implements OrderInfoDao{

	public List<OrderInfo> findNotDeletedOrder(String status) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("findNotDeletedOrder",status);
	}
}
