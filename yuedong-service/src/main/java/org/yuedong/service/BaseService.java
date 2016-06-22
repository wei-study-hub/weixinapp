package org.yuedong.service;

import java.util.List;

import org.yuedong.model.BaseModel;
import org.yuedong.utils.Datagrid;

public interface BaseService<T extends BaseModel> {

	// 写操作
	public int insert(T t);

	public int updateByCode(T t);

	public int deleteByCode(String code);

	// 读操作
	public T findByCode(String code);
	public Datagrid<T> page(Datagrid<T> datagrid);
	public List<T> findAll(T t);
	public int count(T t);
}
