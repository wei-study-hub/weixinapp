package org.yuedong.model;


import org.yuedong.model.BaseModel;


public class AdvertisementInfo extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String adCode; 
private String title; 
private String imgUrl; 
private String refUrl; 
private String remarks; 
private String adType; 

	
	 public void setAdCode(String adCode){
 this.adCode = adCode; 
} 
 public String getAdCode(){
 return this.adCode; 
} 

public void setTitle(String title){
 this.title = title; 
} 
 public String getTitle(){
 return this.title; 
} 

public void setImgUrl(String imgUrl){
 this.imgUrl = imgUrl; 
} 
 public String getImgUrl(){
 return this.imgUrl; 
} 

public void setRefUrl(String refUrl){
 this.refUrl = refUrl; 
} 
 public String getRefUrl(){
 return this.refUrl; 
} 

public void setRemarks(String remarks){
 this.remarks = remarks; 
} 
 public String getRemarks(){
 return this.remarks; 
} 

public void setAdType(String adType){
 this.adType = adType; 
} 
 public String getAdType(){
 return this.adType; 
} 


	
}
