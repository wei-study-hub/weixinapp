package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;


public class UserType extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String userTypeCode; 
private String userTypeName; 
private String remarks; 

	
	 public void setUserTypeCode(String userTypeCode){
 this.userTypeCode = userTypeCode; 
} 
 public String getUserTypeCode(){
 return this.userTypeCode; 
} 

public void setUserTypeName(String userTypeName){
 this.userTypeName = userTypeName; 
} 
 public String getUserTypeName(){
 return this.userTypeName; 
} 

public void setRemarks(String remarks){
 this.remarks = remarks; 
} 
 public String getRemarks(){
 return this.remarks; 
} 


	
}
