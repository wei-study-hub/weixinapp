package org.yuedong.pay;

import java.util.HashMap;
import java.util.Map;

import org.yuedong.vo.PayModel;

import com.pingplusplus.Pingpp;
import com.pingplusplus.exception.PingppException;


public class WxpubCharge {
	
	/**
	 * pingpp 管理平台对应的API key
	 */
	public static String apiKey = "sk_live_1O8CmTGmzPGS18yH481S44mP";
	/**
	 * pingpp 管理平台对应的应用I
	 */
	public static String appId = "app_SG0084ffjzXDSGOS";
	/**
	 * 微信用户在微信公共号的openId
	 */
	public static String openId="YOUR-OPENID";
	/**
	 * 微信公共号里面引导用户付款的网页url地址
	 * 该URL为付款当前网页地址
	 */
	public static String url = "YOUR-URL";
	/**
	 * 微信公共号的appId
	 */
	public static String wx_app_id="wx6957b3a945a05e90";
	/**
	 * 微信公共号的secret
	 */
	public static String wx_app_secret ="64667030b8bcff2c9453f51a5cd28259";
	/**
	 * @param args
	 */
	
	
	public static Charge getWxCharge(PayModel payModel){
		Charge charge = null;
			Pingpp.apiKey = apiKey;
			charge = charge(payModel);
		// 创建Charge
		
		return charge;
	}
	
	public static Charge charge(PayModel payModel) {
		Charge charge = null;
		Map<String, Object> chargeMap = new HashMap<String, Object>();
		chargeMap.put("amount", payModel.getAmount());
		chargeMap.put("currency", "cny");
		chargeMap.put("subject", payModel.getSubject());
		chargeMap.put("body", payModel.getBody());
		chargeMap.put("order_no", payModel.getOrderNo());
		chargeMap.put("channel", "wx_pub");
		chargeMap.put("client_ip", payModel.getClient_ip());

		Map<String, String> extra = new HashMap<String, String>();
		extra.put("open_id", payModel.getOpenId());
		chargeMap.put("extra", extra);
		Map<String, String> app = new HashMap<String, String>();
		app.put("id", appId);
		chargeMap.put("app", app);
		try {
			// 发起交易请求
			charge = Charge.create(chargeMap);
			System.out.println(charge);
		} catch (PingppException e) {
			e.printStackTrace();
		}
		return charge;
	}
}
