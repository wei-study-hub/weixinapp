package org.yuedong.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;

public class BaseAction {
	protected final Logger log = LoggerFactory.getLogger(BaseAction.class);

	public final static String SUCCESS = "success";
	public final static String ERROR = "error";
	public final static String UPDATE = "update";
	public final static String EDIT = "edit";
	public final static String SAVE = "save";
	public final static String ADD = "add";
	public final static String LOGIN = "login";
	public final static String INDEX = "index";
	public final static String EMPTYDATA = "";

	/**
	 * 閻楄鐣╂潏鎾冲毉
	 *
	 * @param response
	 *            閸濆秴绨茬�电钖�
	 * @param message
	 *            閻╃鎼存梻娈戦崘鍛啇
	 */
	public void write(HttpServletResponse response, String message) {
		log.info("閸愭瑥鍤锟芥慨锟�");
		response.setContentType("text/json;charset=UTF-8");
		PrintWriter print = null;
		try {
			print = response.getWriter();
			print.write(message);
			print.close();
			print = null;
			log.info("閸愭瑥鍤崘鍛啇{}", message);
		} catch (Exception e) {
			log.error(e.getMessage());
		} finally {
			if (print != null) {
				print = null;
			}
		}
		log.info("閸愭瑥鍤紒鎾存将");
	}

	public boolean isTelphone(String telPhone) {
		Pattern p = null;
		Matcher m = null;
		p = Pattern.compile("^[1][3,4,5,7,8][0-9]{9}$"); // 妤犲矁鐦夐幍瀣簚閸欙拷
		m = p.matcher(telPhone);
		return m.matches();
	}

	public boolean isEmail(String email) {
		Pattern pattern = Pattern.compile(
				"^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
		Matcher m = pattern.matcher(email);
		return m.matches();
	}

	public boolean isEmpty(String attr) {
		return StringUtils.isEmpty(attr);
	}

	public boolean isEmpty(List<?> list) {
		return list == null || list.size() == 0;
	}

	public void set(HttpServletRequest request, String key, Object o) {
		// 閸掋倖鏌囬弰顖氭儊鐎涙ê婀敍灞界摠閸︺劌姘ㄧ粔濠氭珟閹猴拷
		if (request.getAttribute(key) != null) {
			request.removeAttribute(key);
		}
		request.setAttribute(key, o);
	}

	public void set(HttpServletRequest request, String key, Object[] o) {
		// 閸掋倖鏌囬弰顖氭儊鐎涙ê婀敍灞界摠閸︺劌姘ㄧ粔濠氭珟閹猴拷
		if (request.getAttribute(key) != null) {
			request.removeAttribute(key);
		}
		request.setAttribute(key, o);
	}

	public void setSession(HttpServletRequest request, String key, Object o) {
		// 閸掋倖鏌囬弰顖氭儊鐎涙ê婀敍灞界摠閸︺劌姘ㄧ粔濠氭珟閹猴拷
		if (request.getSession().getAttribute(key) != null) {
			request.getSession().removeAttribute(key);
		}
		request.getSession().setAttribute(key, o);
	}

	public void setSession(HttpServletRequest request, String key, Object[] o) {
		request.getSession().setAttribute(key, o);
	}

	protected Map<String, Object> getParams(HttpServletRequest request) {
		BufferedReader reader = null;
		StringBuilder sb = new StringBuilder();
		try {
			reader = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
			String line = null;
			System.out.println(reader.readLine());
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (null != reader) {
					reader.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(sb.toString());
		return JSON.parseObject(sb.toString(), HashMap.class);
	}

}
