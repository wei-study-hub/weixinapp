package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;


public class ManagerInfo extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String managerCode; 
private String managerName; 
private String remarks; 
private String password; 

	
	 public void setManagerCode(String managerCode){
 this.managerCode = managerCode; 
} 
 public String getManagerCode(){
 return this.managerCode; 
} 

public void setManagerName(String managerName){
 this.managerName = managerName; 
} 
 public String getManagerName(){
 return this.managerName; 
} 

public void setRemarks(String remarks){
 this.remarks = remarks; 
} 
 public String getRemarks(){
 return this.remarks; 
} 

public void setPassword(String password){
 this.password = password; 
} 
 public String getPassword(){
 return this.password; 
} 


	
}
