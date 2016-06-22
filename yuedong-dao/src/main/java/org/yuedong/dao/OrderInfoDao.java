package org.yuedong.dao;

import org.yuedong.model.OrderInfo;

import java.util.List;

import org.yuedong.dao.BaseDao;

public interface OrderInfoDao extends BaseDao<OrderInfo> {

	/**
	 * @describle TODO
	 * @return List<OrderInfo>
	 */
	List<OrderInfo> findNotDeletedOrder(String status);

}
