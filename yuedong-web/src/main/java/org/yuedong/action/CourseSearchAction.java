package org.yuedong.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.action.BaseAction;
import org.yuedong.model.CourseSearch;
import org.yuedong.service.CourseSearchService;
import org.yuedong.utils.Datagrid;
import org.yuedong.utils.Response;


@Controller
@RequestMapping("/courseSearch")
public class CourseSearchAction extends BaseAction {

	@Autowired
	private CourseSearchService courseSearchService;
	
	/**
	 * 获取课程搜索关键词
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/keys", name="获取课程搜索关键词")
	public Object getCourseSearchKey(@PathVariable("v") String v){
		Datagrid<CourseSearch> datagrid = new Datagrid<CourseSearch>();
		datagrid.setPageSize(4);
		datagrid.pagenation();
		datagrid = this.courseSearchService.page(datagrid);
		List<CourseSearch> courseSearchs = datagrid.getResult(); 
		List<String> titles = new ArrayList<String>();
		for(CourseSearch temp: courseSearchs){
			titles.add(temp.getTitile());
		}
		
		return Response.success("keys", titles);
	}

	
}
