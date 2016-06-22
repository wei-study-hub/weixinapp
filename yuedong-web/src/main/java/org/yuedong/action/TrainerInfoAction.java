package org.yuedong.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.action.BaseAction;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.TrainerInfo;
import org.yuedong.service.TrainerInfoService;
import org.yuedong.utils.JsonListUtil;
import org.yuedong.utils.Response;
import org.yuedong.vo.TrainerDetailModel;



@Controller
@RequestMapping("/trainer")
public class TrainerInfoAction extends BaseAction {

	@Autowired
	private TrainerInfoService trainerInfoService;
	
	
	/**
	 * 获取教练详情
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/client/{v}/trainerDeatils", name="获取教练详情")
	public Object trainerDetails(@PathVariable("v") String v,@RequestParam("trainerCode") String trainerCode)
	{
		if (StringUtils.isEmpty(trainerCode)) {
			return Response.error(ResponseCode.PARAMS_EROR,"param error");
		}
		TrainerInfo trainerInfo=trainerInfoService.findByCode(trainerCode);
		if (trainerInfo==null) {
			return Response.error(ResponseCode.NOT_EXIT,"trainerInfo not exit");
		}
		TrainerDetailModel modelInfo=getModelInfo(trainerInfo);
		return Response.success(modelInfo);
	}
	//通过教练详细信封装教练客户端展示信息
	private TrainerDetailModel getModelInfo(TrainerInfo trainerInfo)
	{
		TrainerDetailModel modelInfo=new TrainerDetailModel();
		modelInfo.setSex(trainerInfo.getSex());
		modelInfo.setYears(trainerInfo.getExperience());
		modelInfo.setTrainerCode(trainerInfo.getTrainerCode());
		modelInfo.setTrainerName(trainerInfo.getTrainerName());
		String honors=trainerInfo.getHonors();
		modelInfo.setHonorList(JsonListUtil.getListByJson(honors));
		String exps=trainerInfo.getTeachExps();
		modelInfo.setTeachLifeList(JsonListUtil.getListByJson(exps));
		String teachs=trainerInfo.getTeachExps();
		modelInfo.setTeachLifeList(JsonListUtil.getListByJson(teachs));
//		String imgs=trainerInfo.getTrainerImgCode();
//		String urls=imgInfoService.getImgUrls(imgs);
	/*	List<String> imgList=getImgList(urls);
		modelInfo.setLifeImgList(imgList);
		System.out.println(urls);
		if (imgList.size()>0) {
			modelInfo.setTrainerImgUrl(imgList.get(0));
		}*/
		return modelInfo;
	}
	
	private List<String> getImgList(String imgs)
	{
		List<String> imgList=new ArrayList<String>();
		String[] img=imgs.split(";");
		for (String string : img) {
			imgList.add(string);
		}
		return imgList;
	}
	
}
