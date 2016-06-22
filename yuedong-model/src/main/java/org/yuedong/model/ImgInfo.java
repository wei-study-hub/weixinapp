package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;


public class ImgInfo extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String imgCode; 
private String imgUrl; 
private String token; 
private String namespace; 

	
	 public void setImgCode(String imgCode){
 this.imgCode = imgCode; 
} 
 public String getImgCode(){
 return this.imgCode; 
} 

public void setImgUrl(String imgUrl){
 this.imgUrl = imgUrl; 
} 
 public String getImgUrl(){
 return this.imgUrl; 
} 

public void setToken(String token){
 this.token = token; 
} 
 public String getToken(){
 return this.token; 
} 

public void setNamespace(String namespace){
 this.namespace = namespace; 
} 
 public String getNamespace(){
 return this.namespace; 
} 


	
}
