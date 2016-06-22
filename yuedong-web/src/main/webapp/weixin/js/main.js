//页面一进来时  获取session中保存的数据	
$(function() {
	$.ajax({
		url : '/yuedong-weixin/user/get/session',
		type : "POST",
		success : function(data)
		{   
			if(null == data.userCode){
				window.location.href = '/yuedong-weixin/weixin/logined.html';
			}else{
				$("#userCode").val(data.userCode);
			}
			 
		}
	});
	
})
