package org.yuedong.service;

import java.util.List;

import org.yuedong.model.StudentInfo;
import org.yuedong.service.BaseService;

public interface StudentInfoService extends BaseService<StudentInfo>{

	/**
	 * 通过用户编码获取学员列表
	 * 
	 */
	List<StudentInfo> findStuListByUserCode(String userCode);

}
