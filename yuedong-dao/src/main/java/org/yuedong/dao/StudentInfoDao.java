package org.yuedong.dao;

import org.yuedong.model.StudentInfo;

import java.util.List;

import org.yuedong.dao.BaseDao;

public interface StudentInfoDao extends BaseDao<StudentInfo> {

	/**
	 * 通过userCode获取学员列表
	 * List<StudentInfo>
	 */
	List<StudentInfo> findByUserCode(String userCode);

}
