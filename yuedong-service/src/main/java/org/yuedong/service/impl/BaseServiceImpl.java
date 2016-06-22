package org.yuedong.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.yuedong.dao.BaseDao;
import org.yuedong.model.BaseModel;
import org.yuedong.service.BaseService;
import org.yuedong.utils.Datagrid;

import com.alibaba.fastjson.JSON;

public abstract class BaseServiceImpl<T extends BaseModel> implements BaseService<T> {

	private BaseDao<T> baseDao;

	@Autowired
	public void setBaseDao(BaseDao<T> baseDao) {
		this.baseDao = baseDao;
	}

	public int insert(T t) {
		return baseDao.insert(t);
	}

	public int updateByCode(T t) {
		return baseDao.updateByCode(t);
	}

	public int deleteByCode(String code) {
		return baseDao.deleteByCode(code);
	}

	public T findByCode(String code) {
		return baseDao.findByCode(code);
	}

	public List<T> findAll(T t) {
		return baseDao.findAll(t);
	}

	public int count(T t) {
		return baseDao.count(t);
	}

	public Datagrid<T> page(Datagrid<T> datagrid) {
		Map<String, Object> params = null;
		if (datagrid.getT() == null)
			params = new HashMap<String, Object>();
		else
			params = JSON.parseObject(JSON.toJSONString(datagrid.getT()));
		params.put("offset", datagrid.getOffset());
		if (StringUtils.isNoneBlank(datagrid.getOrderBy()))
			params.put("orderBy", datagrid.getOrderBy());
		if (StringUtils.isNoneBlank(datagrid.getSort()))
			params.put("sort", datagrid.getSort());
		params.put("pageSize", datagrid.getPageSize());
		List<T> list = baseDao.page(params);
		datagrid.setResult(list);
		return datagrid;
	}

}
