package org.yuedong.utils;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.alibaba.fastjson.JSON;
import com.tencent.xinge.Message;
import com.tencent.xinge.MessageIOS;
import com.tencent.xinge.Style;
import com.tencent.xinge.XingeApp;
import org.yuedong.utils.CodeGeneratorUtils;
import org.yuedong.utils.Md5Utils;

public class XingePush {
	private static final int ANDROID_ACCESS_ID_TRAINER = 2100171546;
	private static final String ANDROID_SECRET_KEY_TRAINER = "cd83549f79428fced76a5a17bccad3e7";
	private static final Long IOS_ACCESS_ID_TRAINER = 2200171547L;
	private static final String IOS_SECRET_KEY_TRAINER = "1e31495e6df83c4a9018c068cfa1df94";
	
	private static final int ANDROID_ACCESS_ID_USER = 2100162702;
	private static final String ANDROID_SECRET_KEY_USER = "df8f2d16290a4875c3ca47b10e031b1e";
	private static final Long IOS_ACCESS_ID_USER = 2200162703L;
	private static final String IOS_SECRET_KEY_USER = "6dcef69f95d8ccc7fa9761694bb4d4c0";
	  
	private static XingeApp pushIOS = new XingeApp(IOS_ACCESS_ID_USER, IOS_SECRET_KEY_USER);
	private static XingeApp pushAndroid = new XingeApp(ANDROID_ACCESS_ID_USER, ANDROID_SECRET_KEY_USER);
	
	/**
	 * 推送消息到学员
	 * @param token 学员编码
	 * @param content 推送内容
	 * @param title 标题
	 * @return boolean true成功 ，false失败
	 */
	public static boolean pushMessageForUser(String token, String content, String title){
		JSONObject iosResult = null;
		String iosValue = null;
		JSONObject  androidResult = null;
		String androidValue = null;
		
		androidResult = XingeApp.pushAccountAndroid(ANDROID_ACCESS_ID_USER, ANDROID_SECRET_KEY_USER, title, content, token);
		iosResult = XingeApp.pushAccountIos(IOS_ACCESS_ID_USER, IOS_SECRET_KEY_USER, content, token, XingeApp.IOSENV_PROD);
		
		iosValue = iosResult.toString();
		androidValue = androidResult.toString();
		System.out.println(androidValue + "" + iosValue);
		if(iosValue.endsWith(":0}") || androidValue.endsWith(":0}")){
			return true;
		}
		return false;
	}
	/**
	 * 推送消息到多个用户
	 * @param accountList 推送账户 
	 * @param title 消息标题
	 * @param content 消息内容 
	 * @param type 通知类型
	 * @param code 通知编码
	 * @return boolean true 发送成功， false发送失败
	 */
	public static boolean pushMessageForUsers(List<String> accountList, String title, String content, String type, String code){
		
		Map<String, Object> custom = new HashMap<String, Object>();
		custom.put("type", type);
		custom.put("code", code);
		
		
		MessageIOS messageIOS = new MessageIOS();
		messageIOS.setAlert(content);
		messageIOS.setBadge(1);
		messageIOS.setSound("beep.wav");
		messageIOS.setCustom(custom);
		Message message = new Message();
		message.setContent(content);
		message.setCustom(custom);
		message.setTitle(title);
		message.setType(Message.TYPE_NOTIFICATION);
		message.setStyle(new Style(0,1,1,0,0));
		JSONObject iosResult = pushIOS.pushAccountList(0, accountList, messageIOS, XingeApp.IOSENV_DEV);
		JSONObject androidResult = pushAndroid.pushAccountList(0, accountList, message);
		System.out.print(iosResult.toString() + "----" + androidResult.toString());
		if(iosResult.get("ret_code").equals("0") || androidResult.get("ret_code").equals("0")){
			return true;
		}
		return false;
	}
	public static void main(String args[]){
		XingePush.pushMessageForUser("20160121120043000004", "123", "wr");
	}
}
