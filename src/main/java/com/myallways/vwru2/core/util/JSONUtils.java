package com.myallways.vwru2.core.util;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

public class JSONUtils {

	public static String stringify(List list) {
		JSONArray arr = new JSONArray(list);
		return arr.toString();
	}
	
	public static String stringify(Object obj) {
		JSONObject json = new JSONObject(obj);
		return json.toString();
	}

}
