package org.yuedong.utils;

import java.util.ArrayList;
import java.util.List;



import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class JsonListUtil {
    
    /**
     * @throws RolerServiceException 
     * 将json字符串转换成List对象
     * @Title: getListByJson
     * @param @param json json字符串
     * @return List<BootyInfo>
     * @throws
     */
    public static List<String> getListByJson(String json){
        try {
            if (json == null || "".equals(json)) {
                return null;
            }

            List<String> list = new ArrayList<String>();
            Gson gson = new Gson();
            list = gson.fromJson(json,
                    new TypeToken<List<String>>() {
                    }.getType());
            return list;
        } catch (Exception e) {
            try {
				throw new Exception("json to list error..");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
        }
        return null;
    }
    /**
     * @throws RolerServiceException 
    * @Title: getJsonStrByMap 
    * @Description: 将List对象转换成json字符串
    * @param @param list
    * @return String  
    * @throws
     */
    public static String getJsonStrByList(List<String> list){
        try {
            Gson gson = new Gson();
            String json = gson.toJson(list);
            return json;
        } catch (Exception e) {
            e.getMessage();
        }
		return null; 
    }

}
