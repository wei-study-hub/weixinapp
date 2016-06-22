package org.yuedong.dao;

import java.util.List;
import java.util.Map;

import org.yuedong.model.BaseModel;

public interface BaseDao<T extends BaseModel> {
	// 写操作
	public int insert(T t);
	public int updateByCode(T t);
	public int deleteByCode(String code);

	// 读操作
	public T findByCode(String code);
	public List<T> findAll(T t);
	public List<T> page(Map<String, Object> params);
	public int count(T t);

}
