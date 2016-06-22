package org.yuedong.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.yuedong.constants.ResponseCode;
import org.yuedong.message.XmlReqClient;

import org.yuedong.utils.Response;

public class MessageUtil {

	private final static String remoteUrl = "http://apis.baidu.com/kingtto_media/106sms/106sms";

	private final static String appKey = "bd3b9be41404e7f6ccf3f846b7491050";

	private final static String format_remoteurl = "http://www.ucpaas.com/maap/sms/code";

	private static String sid = "0c6a5c70600eb4ea4bfc30e17518ccfc";

	private static String appId = "a7a1cc01c55748d6a47fbf4d628edd36";

	private static String token = "b3c02a317986b2686780a33483ba670a";

	private static String templateId = "15610";
	
	private static String accountSid = "0c6a5c70600eb4ea4bfc30e17518ccfc";
	private static String authToken = "b3c02a317986b2686780a33483ba670a";

	private final static Logger log = LoggerFactory
			.getLogger(MessageUtil.class);

	public static Object sendMessage(String phone, String param, Map<String, String> responseParams){
		//return Response.success("发送成功"); 
		String result = new XmlReqClient().templateSMS(accountSid, authToken, appId, templateId, phone, param) ;
		System.out.println(result);
		if(result.contains("<respCode>000000</respCode>")){
			return Response.success(responseParams);
		}
		else if(result.contains("<respCode>105122</respCode>")){
			return Response.error(ResponseCode.LIMIT, "send mesaage limit");
		}
		return Response.fail("send error");
	}
	
	public static boolean sendMsg(String mobile, String msg) {
		log.info("发送短信号码:{},内容:{}", mobile, msg);
		try {
			URL url = new URL(remoteUrl + "?mobile=" + mobile + "&content="
					+ URLEncoder.encode(msg, "UTF-8"));
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			connection.setRequestMethod("GET");
			// 填入apikey到HTTP header
			connection.setRequestProperty("apikey", appKey);
			connection.connect();
			InputStream is = connection.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					is, "UTF-8"));
			StringBuilder result = new StringBuilder();
			String strRead = null;
			while ((strRead = reader.readLine()) != null) {
				result.append(strRead);
			}
			reader.close();
			log.info("验证码结果{}", result.toString());
			if (result.toString().contains(
					"<returnstatus>Success</returnstatus>")) {
				return true;
			}
		} catch (Exception e) {
			log.error("发送验证码错误", e);
		}
		return false;
	}

	public static boolean sendMsg(String mobile, String verifyCode,
			String outTime) {
		log.info("发送短信号码:{},模版:{},验证码:{},失效时间{}", mobile, templateId,
				verifyCode, outTime);
		String time = new SimpleDateFormat("yyyyMMddHHmmssSSS")
				.format(new Date());

		try {
			StringBuilder param = new StringBuilder();
			param.append("?sid=").append(sid).append("&appId=").append(appId)
					.append("&time=").append(time).append("&sign=")
					.append(sign(time)).append("&templateId=")
					.append(templateId).append("&to=").append(mobile)
					.append("&param=").append(verifyCode).append(",")
					.append(outTime);

			URL url = new URL(format_remoteurl + param.toString());
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			connection.setRequestMethod("GET");
			connection.connect();
			InputStream is = connection.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					is, "UTF-8"));
			StringBuilder result = new StringBuilder();
			String strRead = null;
			while ((strRead = reader.readLine()) != null) {
				result.append(strRead);
			}
			reader.close();
			System.out.println(result.toString());
			log.info("验证码结果{}", result.toString());
			if (result.toString().contains("\"respCode\":\"000000\"")) {
				return true;
			}
		} catch (Exception e) {
			log.error("发送验证码错误", e);
		}
		return false;
	}

	private static String sign(String time) {
		return Md5Utils.md5(sid + time + token).toLowerCase();
	}
}