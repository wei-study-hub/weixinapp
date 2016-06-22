<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="org.yuedong.model.UserInfo" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<!-- Sets initial viewport load and disables zooming  -->
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">

<!-- Makes your prototype chrome-less once bookmarked to your phone's home screen -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Include the compiled Ratchet CSS -->
<link href="/yuedong-weixin/weixin/css/ratchet.css" rel="stylesheet">
<link href="/yuedong-weixin/weixin/css/allstyle.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/yuedong-weixin/weixin/css/bootstrap.min.css">
<script type="text/javascript"
	src="/yuedong-weixin/weixin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="/yuedong-weixin/weixin/js/bootstrap.min.js"></script>
<script src="/yuedong-weixin/weixin/ping/pingpp.js"></script>
</head>
<body onload="getCharge()">
	<input type="hidden" id="code" name="code" value="${code }" />
	<input type="hidden" id="courseCode" name="courseCode"
		value="${courseCode}" />
	<script type="text/javascript">
	  function getCharge() {
		   
		    var requestCode = $("#code").val();
		     var courseCode = $("#courseCode").val();
		    $.post("/yuedong-weixin/order/weixin/pay/charge", {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
				code : requestCode, 
				courseCode:courseCode
			}, function(data) {				
				pay(data,courseCode);
			}, "text");
		}
		function pay(charge,courseCode) {
			//调用微信支付
			pingpp.createPayment(charge,function(result, error) {
					if (result == "success") {
						   //付款成功
							var json = eval('(' + charge + ')');
							$.post("/yuedong-weixin/order/weixin/pay/success",{
									orderNo : json.order_no
									},function(data) {
										window.location.href = ""+data;
                                    }, "text");

					} else if (result == "fail") {
						//付款失败
						
						window.location.href = "";
					} else if (result == "cancel") {
						//取消付款
				        window.location.href = "";
					}else{
						alert("系统异常");
					}
			}); 
		}
	</script>
</body>
</html>