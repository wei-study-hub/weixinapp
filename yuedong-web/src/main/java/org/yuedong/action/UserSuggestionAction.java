package org.yuedong.action;

import java.util.Date;
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
import org.yuedong.model.UserSuggestion;
import org.yuedong.service.UserSuggestionService;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.Response;

@Controller
@RequestMapping("/suggestion")
public class UserSuggestionAction extends BaseAction {

	@Autowired
	private UserSuggestionService userSuggestionService;

	/**
	 * 用户反馈
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/add", name = "用户反馈")
	public Object userSuggestion(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String content = params.get("content");
		String userCode = params.get("userCode");
		String telephone = params.get("telephone");
		if (StringUtils.isBlank(content) || StringUtils.isBlank(telephone) || StringUtils.isBlank(telephone)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		UserSuggestion userSuggestion = new UserSuggestion();
		userSuggestion.setContent(content);
		userSuggestion.setCreateTime(new Date());
		userSuggestion.setModifyTime(new Date());
		userSuggestion.setSuggestionCode(CodeGeneratorUtils.getCode(20));
		userSuggestion.setTelephone(telephone);
		userSuggestion.setUserCode(userCode);
		int result = this.userSuggestionService.insert(userSuggestion);
		if(result <= 0){
			return Response.fail("server error");
		}
		return Response.success("success");
	}

}
