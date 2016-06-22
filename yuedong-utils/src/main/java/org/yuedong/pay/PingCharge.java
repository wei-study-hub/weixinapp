package org.yuedong.pay;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.yuedong.vo.PayModel;

import com.pingplusplus.Pingpp;
import com.pingplusplus.exception.PingppException;

@Component("pingCharge")
public class PingCharge {
	//支付 apiKey = sk_live_1O8CmTGmzPGS18yH481S44mP
	//public static String apiKey = "sk_test_mbr9aLbTWfvLCKyHKKrHuTO0";
	public static String apiKey = "sk_live_1O8CmTGmzPGS18yH481S44mP";
	public static String appId = "app_SG0084ffjzXDSGOS";
	
    public Charge charge(PayModel payModel) {
    	 Pingpp.apiKey = apiKey;
        Charge charge = null;
        Map<String, Object> chargeMap = new HashMap<String, Object>();
        chargeMap.put("amount", payModel.getAmount());
        chargeMap.put("currency", "cny");
        //商品标题
        chargeMap.put("subject", payModel.getSubject());
        //商品描述信息
        chargeMap.put("body", payModel.getBody());
        chargeMap.put("order_no", payModel.getOrderNo());
        chargeMap.put("channel", payModel.getChannel());
        chargeMap.put("client_ip", "192.168.2.185");
        //以下参数为可选参数
        Map<String, String> app = new HashMap<String, String>();
        app.put("id",appId);
        chargeMap.put("app", app);
        try {
            //发起交易请求
            charge = Charge.create(chargeMap);
            System.out.println(charge);
        } catch (PingppException e) {
            e.printStackTrace();
        }
        return charge;
    }


}
