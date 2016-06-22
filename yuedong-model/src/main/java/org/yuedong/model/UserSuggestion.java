package org.yuedong.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.yuedong.model.BaseModel;


public class UserSuggestion extends BaseModel{

	private static final long serialVersionUID = 1L;

	 private String content; 
private String userCode; 
private String suggestionCode; 
private String telephone; 

	
	 public void setContent(String content){
 this.content = content; 
} 
 public String getContent(){
 return this.content; 
} 


public void setUserCode(String userCode){
 this.userCode = userCode; 
} 
 public String getUserCode(){
 return this.userCode; 
} 

public void setSuggestionCode(String suggestionCode){
 this.suggestionCode = suggestionCode; 
} 
 public String getSuggestionCode(){
 return this.suggestionCode; 
} 

public void setTelephone(String telephone){
 this.telephone = telephone; 
} 
 public String getTelephone(){
 return this.telephone; 
} 


	
}
