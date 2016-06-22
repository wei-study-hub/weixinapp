package org.yuedong.model;

import org.yuedong.model.BaseModel;


public class CourseSearch extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String code; 
private String titile; 
private String remarks; 

	
	 public void setCode(String code){
 this.code = code; 
} 
 public String getCode(){
 return this.code; 
} 

public void setTitile(String titile){
 this.titile = titile; 
} 
 public String getTitile(){
 return this.titile; 
} 

public void setRemarks(String remarks){
 this.remarks = remarks; 
} 
 public String getRemarks(){
 return this.remarks; 
} 


	
}
