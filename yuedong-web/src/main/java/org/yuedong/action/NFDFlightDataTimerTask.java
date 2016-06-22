package org.yuedong.action;

import java.util.TimerTask;

import org.apache.log4j.Logger;

public class NFDFlightDataTimerTask extends TimerTask {
	private static Logger log = Logger.getLogger(NFDFlightDataTimerTask.class);
	@Override
	public void run() {
	
	  try {
	
	      //在这里写你要执行的内容
	      System.out.println("定时任务启动");
	      
	      
	      
	   } catch (Exception e) {
	      log.info("-------------解析信息发生异常--------------");
	
	  }
	
	 }
	
}
	

