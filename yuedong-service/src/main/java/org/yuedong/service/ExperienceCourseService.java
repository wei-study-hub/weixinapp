package org.yuedong.service;

import java.util.List;

import org.yuedong.model.ExperienceCourse;
import org.yuedong.vo.ExperienceCourseModel;
import org.yuedong.vo.ExperienceDetail;

public interface ExperienceCourseService extends BaseService<ExperienceCourse>{
	/**
	 * 获取体验课的首页列表
	 * @param index
	 * @return
	 */
      public List<ExperienceCourseModel> getCourseIndex(int index) ;
      /**
       * 查询体验课详情
       * @param userCode
       * @param experienceCourse
       * @return
       */
  	  public ExperienceDetail getEcourseDetail(String userCode, ExperienceCourse experienceCourse);
   	 
}
