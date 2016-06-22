package org.yuedong.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.yuedong.action.BaseAction;
import org.yuedong.service.AdvertisementInfoService;


@Controller
@RequestMapping("advertisementInfoAction")
public class AdvertisementInfoAction extends BaseAction {

	@Autowired
	private AdvertisementInfoService advertisementInfoService;

	
}
