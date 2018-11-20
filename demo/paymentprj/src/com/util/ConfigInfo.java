package com.util;

import java.util.ResourceBundle;

/**
 * 
 *@desc:��ȡ�����ļ���Ϣ
 *@author chunhui
 *@date:Nov 19, 20185:30:00 PM
 */
public class ConfigInfo {
	/**
	 * ���ڷŵ�������
	 */
	private static ResourceBundle cache=null;

	static {
		cache=ResourceBundle.getBundle("merchantInfo");
	}
	/**
	 * 
	 *@desc:����keyȡֵ
	 *@param key
	 *@return
	 *@return:String
	 *@trhows
	 */
	public static String getValue(String key) {
		return cache.getString(key);
	}
	
}
