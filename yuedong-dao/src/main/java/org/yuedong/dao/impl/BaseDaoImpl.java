package org.yuedong.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.yuedong.dao.BaseDao;
import org.yuedong.model.BaseModel;

public abstract class BaseDaoImpl<T extends BaseModel> extends SqlSessionDaoSupport implements BaseDao<T> {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public int insert(T t) {
		return getSqlSession().insert(this.getClass().getName() + ".insert", t);
	}

	public int updateByCode(T t) {
		return getSqlSession().update(this.getClass().getName() + ".updateByCode", t);
	}

	public int deleteByCode(String code) {
		return getSqlSession().delete(this.getClass().getName() + ".deleteByCode", code);
	}

	public T findByCode(String code) {
		return getSqlSession().selectOne(this.getClass().getName() + ".findByCode", code);
	}

	public List<T> findAll(T t) {
		return getSqlSession().selectList(this.getClass().getName() + ".findAll", t);
	}

	public List<T> page(Map<String, Object> params) {
		List<T> list = getSqlSession().selectList(getClass().getName() + ".page", params);
		return list;
	}

	public int count(T t) {
		return getSqlSession().selectOne(this.getClass().getName() + ".count", t);
	}

}
