package org.yuedong.utils;

import java.util.HashMap;
import java.util.Map;

import org.yuedong.constants.ResponseCode;

public class Response {

	private String resultCode;

	private Object data;

	private Response(String resultCode, Object data) {
		this.resultCode = resultCode;
		this.data = data;
	}

	public static Response success(Object obj) {
		return new Response(ResponseCode.SUCCESS, obj);
	}

	public static Response success(String key, Object obj) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(key, obj);
		return new Response(ResponseCode.SUCCESS, result);
	}


	public static Response fail(Object obj) {
		return new Response(ResponseCode.EXCEPTION, obj);
	}

	public static Response error(String rc, Object obj) {
		return new Response(rc, obj);
	}


	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getResultCode() {
		return resultCode;
	}

	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}

}
