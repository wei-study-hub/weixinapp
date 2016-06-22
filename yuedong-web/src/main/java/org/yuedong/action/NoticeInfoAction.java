package org.yuedong.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.ObjectUtils.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yuedong.action.BaseAction;
import org.yuedong.constants.ResponseCode;
import org.yuedong.model.NoticeInfo;
import org.yuedong.service.NoticeInfoService;
import org.yuedong.utils.DataUtil;
import org.yuedong.utils.Datagrid;
import org.yuedong.utils.Response;
import org.yuedong.vo.NoticeModel;

@Controller
@RequestMapping("/notice")
public class NoticeInfoAction extends BaseAction {

	@Autowired
	private NoticeInfoService noticeInfoService;

	/**
	 * 通知列表
	 * 
	 * @param v
	 * @param userCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/list", name = "通知列表")
	public Object getUserNoticeList(@PathVariable("v") String v, @RequestBody Map<String, String> params) {
		String userCode = params.get("userCode");
		String index = params.get("index");
		int pageIndex = 1;
		try {
			pageIndex = Integer.parseInt(index);
		} catch (Exception e) {
			return Response.error(ResponseCode.PARAMS_EROR, "index error");
		}
		if (StringUtils.isBlank(userCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		NoticeInfo noticeInfo = new NoticeInfo();
		noticeInfo.setUserCode(userCode);
		Datagrid<NoticeInfo> datagrid = new Datagrid<NoticeInfo>();
		datagrid.setIndex(pageIndex);
		datagrid.setSort("desc");
		datagrid.setT(noticeInfo);
		datagrid.pagenation();
		List<NoticeInfo> noticeInfos = this.noticeInfoService.page(datagrid).getResult();
		List<NoticeModel> noticeModels = new ArrayList<NoticeModel>();
		if (noticeInfos != null && noticeInfos.size() > 0) {
			for (NoticeInfo temp : noticeInfos) {
				NoticeModel noticeModel = new NoticeModel();
				noticeModel.setContent(temp.getContent());
				noticeModel.setDataTime(DataUtil.dateToStr("yyyy-MM-dd hh:mm:ss", temp.getCreateTime()));
				noticeModel.setNoticeCode(temp.getNoticeCode());
				noticeModel.setNoticeType(temp.getNoticeType());
				noticeModel.setTitle(temp.getTitle());
				noticeModels.add(noticeModel);
			}
		}
		return Response.success("noticeModes", noticeModels);
	}
	/**
	 * 
	 * @describle 删除通知
	 */
	@ResponseBody
	@RequestMapping(value = "/client/{v}/delete", name = "删除通知")
	public Object deleteNotice(@PathVariable("v") String v, @RequestParam("noticeCode") String noticeCode)
	{
		if (StringUtils.isBlank(noticeCode)) {
			return Response.error(ResponseCode.PARAMS_EROR, "params error");
		}
		int resultCode=noticeInfoService.deleteByCode(noticeCode);
		if (resultCode>0) {
			return Response.success("delete success");
		}
		 return Response.error(ResponseCode.EXCEPTION, "delete error");
	}
}
