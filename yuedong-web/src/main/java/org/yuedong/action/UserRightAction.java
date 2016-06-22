package org.yuedong.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.yuedong.action.BaseAction;
import org.yuedong.service.UserRightService;


@Controller
@RequestMapping("userRightAction")
public class UserRightAction extends BaseAction {

	@Autowired
	private UserRightService userRightService;

	
}
