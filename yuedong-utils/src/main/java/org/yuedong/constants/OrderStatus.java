package org.yuedong.constants;

/**
 * 订单状态
 * @author lindj
 *
 */
public interface OrderStatus {

	//待付款
	String OBLIGATION = "01";
	//付款成功(订单进行中)
	String PAY_SUCCESS = "00";
	//订单完成
	String COMPLETION = "02";
	//订单预约
	String APPOINTMENT = "03";
	

}
