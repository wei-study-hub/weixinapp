package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;


public class UserRight extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String rightUrl; 
private String rightName; 
private String remarks; 
private Integer isPublic; 
private String rightCode; 

	
	 public void setRightUrl(String rightUrl){
 this.rightUrl = rightUrl; 
} 
 public String getRightUrl(){
 return this.rightUrl; 
} 

public void setRightName(String rightName){
 this.rightName = rightName; 
} 
 public String getRightName(){
 return this.rightName; 
} 

public void setRemarks(String remarks){
 this.remarks = remarks; 
} 
 public String getRemarks(){
 return this.remarks; 
} 

public void setIsPublic(Integer isPublic){
 this.isPublic = isPublic; 
} 
 public Integer getIsPublic(){
 return this.isPublic; 
} 

public void setRightCode(String rightCode){
 this.rightCode = rightCode; 
} 
 public String getRightCode(){
 return this.rightCode; 
} 


	
}
