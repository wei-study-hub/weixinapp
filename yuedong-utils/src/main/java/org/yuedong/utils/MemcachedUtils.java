package org.yuedong.utils;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.List;
import java.util.Map;

import net.spy.memcached.MemcachedClient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;

public class MemcachedUtils {

	public static MemcachedClient memcachedClient;

	private final static String CACHE_IP = "127.0.0.1";

	private final static int PORT = 11211;

	private final static Logger logger = LoggerFactory
			.getLogger(MemcachedUtils.class);

	static {
		try {
			memcachedClient = new MemcachedClient(new InetSocketAddress(
					CACHE_IP, PORT));
		} catch (IOException e) {
			logger.error("初始化对象出错，错误{}", e.getMessage());
		}
	}

	/**
	 * 获取map对象
	 * 
	 * @param key
	 * @param map
	 */
	public static Object get(String key) {
		return memcachedClient.get(key);
	}

	/**
	 * 设置map对象
	 * 
	 * @param key
	 * @param map
	 */
	public static void set(String key, Map<String, ?> map) {
		memcachedClient.set(key, 0, JSON.toJSON(map));
	}

	/**
	 * 设置list对象
	 */
	public static void set(String key, List<?> list) {
		memcachedClient.set(key, 0, list);
	}

	/**
	 * 设置Object对象
	 */
	public static void set(String key, Object obj) {
		memcachedClient.set(key, 0, obj);
	}

	/**
	 * 设置Object对象
	 */
	public static void set(String key, Integer outTime, Object obj) {
		memcachedClient.set(key, outTime, obj);
	}

	/**
	 * 添加对象
	 */
	public static void add(String key, Object obj) {
		memcachedClient.add(key, 0, obj);
	}

	/**
	 * 增加计数器
	 */
	public static long incre(String key, long num) {
		if (memcachedClient.get(key) == null) {
			synchronized (memcachedClient) {
				memcachedClient.add(key, 0, 0);
			}
		}
		return memcachedClient.incr(key, num);
	}

	/**
	 * 增加计数器
	 */
	public static long decr(String key, long num) {
		if (memcachedClient.get(key) == null) {
			synchronized (memcachedClient) {
				memcachedClient.add(key, 0, 0);
			}
		}
		return memcachedClient.decr(key, num);
	}

	/**
	 * 关闭连接使得tomcat能够自然停止
	 */
	public static void close() {
		memcachedClient.shutdown();
		memcachedClient = null;
	}

	/**
	 * 删除某个节点
	 * 
	 * @param key
	 */
	public static void delete(String key) {
		memcachedClient.delete(key);
	}

}
