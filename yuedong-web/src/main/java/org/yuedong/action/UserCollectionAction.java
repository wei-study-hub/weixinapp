package org.yuedong.action;

import java.util.Date;
import java.util.HashMap;
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
import org.yuedong.constants.CollectType;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.ActivityInfo;
import org.yuedong.model.UserCollection;
import org.yuedong.service.ActivityInfoService;
import org.yuedong.service.CourseInfoService;
import org.yuedong.service.UserCollectionService;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.Response;
import org.yuedong.vo.ActivityDetail;
import org.yuedong.vo.CollectModel;
import org.yuedong.vo.CourseDetials;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/collect")
public class UserCollectionAction extends BaseAction {

	@Autowired
	private UserCollectionService userCollectionService;
	@Autowired
	private ActivityInfoService activityInfoService;
	@Autowired
	private CourseInfoService courseInfoService;

	/**
	 * �û��ղ�
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/collect", name = "�û��ղ�")
	public Object userCollect(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String targetCode = params.get("targetCode");
		String collectType = params.get("collectType");
		if (StringUtils.isBlank(targetCode) || StringUtils.isBlank(userCode) || StringUtils.isBlank(collectType)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		
		UserCollection userCollection = new UserCollection();
		userCollection.setUserCode(userCode);
		userCollection.setTargetCode(targetCode);
		userCollection.setCollectType(collectType);
		List<UserCollection> userCollections = this.userCollectionService.findAll(userCollection);
		if(userCollections != null && userCollections.size() > 0){
			return Response.error(ResponseCode.EXIT, "collected");
		}
		userCollection.setCreateTime(new Date());
		userCollection.setModifyTime(new Date());
		userCollection.setCollectCode(CodeGeneratorUtils.getCode(20));
		this.userCollectionService.insert(userCollection);
		return Response.success("collect success");
	}

	/**
	 * 
	 * @describle ��ȡ�û��ղ��б�
	 * @param params
	 * @return �û��ղ��б�
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/collectList", name = "�û��ղ��б�")
	public Object getUserCollect(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String collectType = params.get("collectType");// ȷ���ǿγ̻��ǻ��Ĭ���ǿγ��ղ��б�
		String userCode = params.get("userCode");// �û�Ψһ���
		if (StringUtils.isBlank(userCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		if (StringUtils.isBlank(collectType)) { // Ĭ���ǿγ��ղ��б�
			collectType = CollectType.COURSE;
		}
		UserCollection uc = new UserCollection();
		uc.setUserCode(userCode);
		uc.setCollectType(collectType);
		List<UserCollection> ucList = userCollectionService.findAll(uc);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("ucList", ucList);
		return Response.success(ResponseCode.SUCCESS, resultMap);
	}

	/**
	 * �û��ղ��б�
	 * 
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/list", name = "�û��ղ��б�")
	public Object getUserCollectList(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String collectType = params.get("collectType");
		String index = params.get("index");
		int pageIndex = 1;
		try {
			pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			return Response.fail("index error");
		}
        System.out.println(JSON.toJSONString(params));
		List<CollectModel> collectModels = this.userCollectionService.getUserCollectList(userCode, collectType,
				pageIndex);
		Map<String, Object> resultParams = new HashMap<String, Object>();
		resultParams.put("index", (pageIndex + 1));
		resultParams.put("collectModels", collectModels);
		return Response.success(resultParams);
	}
	
	/**
	 * ȡ���ղ�
	 * @param v
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/cancel", name="ȡ���ղ�")
	public Object deleteUserCollect(@PathVariable("v") String v, @RequestBody Map<String, String> params){
		
		String userCode = params.get("userCode");
		String targetCode = params.get("targetCode");
		
		UserCollection userCollection = new UserCollection();
		userCollection.setUserCode(userCode);
		userCollection.setTargetCode(targetCode);
		List<UserCollection> temp = this.userCollectionService.findAll(userCollection);
		if(temp != null && temp.size() > 0){
			String code = temp.get(0).getCollectCode();
			this.userCollectionService.deleteByCode(code);
			return Response.success("delete success");
		}
		return Response.error(ResponseCode.NOT_EXIT, "not exit");
	}

}
