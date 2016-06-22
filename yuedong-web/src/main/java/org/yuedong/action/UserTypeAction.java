package org.yuedong.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.yuedong.action.BaseAction;
import org.yuedong.service.UserTypeService;


@Controller
@RequestMapping("userTypeAction")
public class UserTypeAction extends BaseAction {

	@Autowired
	private UserTypeService userTypeService;

	
}
