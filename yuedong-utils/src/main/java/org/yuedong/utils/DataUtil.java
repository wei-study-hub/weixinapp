package org.yuedong.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.math3.fitting.PolynomialCurveFitter;
import org.apache.commons.math3.fitting.WeightedObservedPoint;

public class DataUtil {

	/**
	 * 年月日  yyyy-MM-dd
	 */
	public static final String yyMMdd="yyyy-MM-dd";
	/**
	 * 标准类型_汉字版   yyyy年MM月dd日 HH时mm分ss秒
	 */
	public static final String NORMAL_CN="yyyy年MM月dd日 HH时mm分ss秒";
	
	/**
	 * 标准类型 yyyy-MM-dd HH:mm:ss
	 */
	public static final String NORMAL="yyyy-MM-dd HH:mm:ss";
	
	/**
	 * 时分秒  HH:mm:ss
	 */
	public static final String Hms="HH:mm:ss";
	
	/**
	 * 年月日  yyyy.MM.dd
	 */
	public static final String yy_MMdd="yyyy.MM.dd";
	
	
	
	
	
	
	public static double distanceSimplify(double lat1, double lng1, double lat2, double lng2, double[] a) {
	     double dx = lng1 - lng2; // 经度差值
	     double dy = lat1 - lat2; // 纬度差值
	     double b = (lat1 + lat2) / 2.0; // 平均纬度
	     double Lx = Math.toRadians(dx) * 6367000.0* Math.cos(Math.toRadians(b)); // 东西距离
	     double Ly = 6367000.0 * Math.toRadians(dy); // 南北距离
	     return Math.sqrt(Lx * Lx + Ly * Ly);  // 用平面的矩形对角距离公式计算总距离
	}
	   
	
/*	public static double[] trainPolyFit(int degree, int Length){
	    PolynomialCurveFitter polynomialCurveFitter = PolynomialCurveFitter.create(degree);
	    double minLat = 10.0; //中国最低纬度
	    double maxLat = 60.0; //中国最高纬度
	    double interv = (maxLat - minLat) / (double)Length;
	    List weightedObservedPoints = new ArrayList();
	    for(int i = 0; i < Length; i++) {
	        WeightedObservedPoint weightedObservedPoint = new WeightedObservedPoint(1,  minLat + (double)i*interv, Math.cos(toRadians(x[i])));
	        weightedObservedPoints.add(weightedObservedPoint); 
	    }
	    return polynomialCurveFitter.fit(weightedObservedPoints);
	}
	public static double distanceSimplifyMore(double lat1, double lng1, double lat2, double lng2, double[] a) {
	     //1) 计算三个参数
	     double dx = lng1 - lng2; // 经度差值
	     double dy = lat1 - lat2; // 纬度差值
	     double b = (lat1 + lat2) / 2.0; // 平均纬度
	     //2) 计算东西方向距离和南北方向距离(单位：米)，东西距离采用三阶多项式
	     double Lx = (a[3] * b*b*b  + a[2]* b*b  +a[1] * b + a[0] ) * Math.toRadians(dx) * 6367000.0; // 东西距离
	     double Ly = 6367000.0 * Math.toRadians(dy); // 南北距离
	     //3) 用平面的矩形对角距离公式计算总距离
	     return Math.sqrt(Lx * Lx + Ly * Ly);
	}*/
	/**
	 * 获取当前时间的DATE类型对象
	 */
	public static Date getCurrDate()
	{
		return new Date(System.currentTimeMillis());
	}
	
	
	/**
	 * 字符串转换为日期
	 * 
	 * @param format
	 * @param value
	 * @return
	 */
	public static Date strToDate(String format, String value) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date date = null;
		try {
			date = sdf.parse(value);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	/**
	 * 格式化日期
	 * 
	 * @param format
	 * @param date
	 * @return
	 */
	public static Date formatDate(String format, Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String temp = sdf.format(date);
		return strToDate(format, temp);
	}

	/**
	 * 日期到字符串的转换
	 * 
	 * @param format
	 *            用户指定转换格式
	 * @param value
	 * @return
	 */
	public static String dateToStr(String format, Date value) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String date = null;
		date = sdf.format(value);
		return date;
	}
	/**
	 * 比较两个时间的差值与给定的差值gap的大小
	 * @param begin 开始时间
	 * @param end 结束时间
	 * @param gap 差值
	 * @return
	 */
	public static boolean calculateDateGap(Date begin, Date end, Integer gap){
		Long temp = (long) (gap * 60 * 1000);
		Long value = end.getTime()-begin.getTime();
		if(value >= temp){
			return true;
		}
		return false;
	}
}
