package org.yuedong.constants;

public interface ResponseCode {
	//请求成功
	String SUCCESS = "00";
	//参数错误
	String PARAMS_EROR = "01";
	//不存在
	String NOT_EXIT = "02";
	//已存在
	String EXIT = "03";
	String COMPLETE = "04";
	//系统异常
	String EXCEPTION = "99";
	//短信发送 达到上限
	String LIMIT = "05";
	String BINDING = "06";
	//非法请求
	String ILLEGAL = "07";
	//无效请求
	String INVALID = "08";

}
