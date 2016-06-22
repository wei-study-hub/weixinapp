package org.yuedong.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.action.BaseAction;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.CourseType;
import org.yuedong.model.UserPreference;
import org.yuedong.service.CourseTypeService;
import org.yuedong.service.ImgInfoService;
import org.yuedong.service.UserPreferenceService;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.Response;
import org.yuedong.vo.PreferenceModel;


@Controller
@RequestMapping("/userPreference")
public class UserPreferenceAction extends BaseAction {

	@Autowired
	private UserPreferenceService userPreferenceService;
	@Autowired
	private ImgInfoService imgInfoService;
	@Autowired
	private CourseTypeService courseTypeService;

	/**
	 * �û�����ƫ��
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/add", name="�û�����ƫ��")
	public Object insert(@PathVariable("v") String v, @RequestBody Map<String, String> params){
		String userCode = params.get("userCode");
		String preferenceCode = params.get("preferenceCode");
		if(StringUtils.isBlank(userCode) || StringUtils.isBlank(preferenceCode)){
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		try {
			this.userPreferenceService.addUserPreference(preferenceCode, userCode);
		} catch (Exception e) {
			e.printStackTrace();//return Response.fail("server error");
		}
		
		return Response.success("success");
	}
	
	/**
	 * ��ѯ����ƫ��
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{1}/all", name="��ѯ����ƫ��")
	public Object list(@PathVariable("v") String v){
		List<CourseType> courseTypes = this.courseTypeService.findAll(null);
		List<PreferenceModel> preferenceModels = new ArrayList<PreferenceModel>();
		for(CourseType courseType: courseTypes){
			PreferenceModel preferenceModel = new PreferenceModel();
			String imgUrl = courseType.getImgUrl();
			preferenceModel.setImgUrl(imgUrl);
			preferenceModel.setPreferenceCode(courseType.getCourseTypeCode());
			preferenceModel.setPreferenceName(courseType.getCourseTypeName());
			preferenceModels.add(preferenceModel);
		}
		return Response.success(preferenceModels);
	}
	
	/**
	 * ��ѯ�û�ƫ��
	 * @param v
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/selected", name="��ѯ�û�ƫ��")
	public Object getUserPreference(@PathVariable("v") String v, @RequestBody Map<String, String> params){
		String userCode = params.get("userCode");
		String preferenceCodes = this.userPreferenceService.getUserPreferenceCode(userCode);
		return Response.success("preferenceCodes", preferenceCodes);
	}
	
}
