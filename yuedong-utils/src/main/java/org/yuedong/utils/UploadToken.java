package org.yuedong.utils;



import org.apache.commons.lang3.StringUtils;

import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;

/**
 * 图片上传
 * @author 黑夜骑士
 *
 */
public class UploadToken {

	public static final String accessKey = "kEzOw6tx4VJSgy9dZdqZ6-rtE2UkLxPRd_BBwm24";
	public static final String secretKey = "_PExBfMuAoIn5UaTRtaaud1R94RjDl1QMNbGZbx3";
	public static  String getToken(String namespace ,String key){
		
		//初始化，密匙配置
		Auth auth = Auth.create(accessKey, secretKey);
		//通过上传策略生成上传凭证
		if(StringUtils.isBlank(key)){
			return auth.uploadToken(namespace);
		}
		key = key.substring(key.lastIndexOf("/") +1, key.length());
		/*if(key.contains("?")){
			key = key.substring(0, key.indexOf("?"));
		}*/
		System.out.println(key);
		return auth.uploadToken(namespace, key);
		
	}

}
