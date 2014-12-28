package com.myallways.vwru2.core.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils extends org.apache.commons.lang.StringUtils {
	public static String firstUpper(String str, boolean isUpper) {
		if (isEmpty(str)) {
			return str;
		}
		String first = str.charAt(0) + EMPTY;
		if (isUpper)
			return str.replaceFirst(first, first.toUpperCase());
		else
			return str.replaceFirst(first, first.toLowerCase());
	}

	public static String match(String src, String regex) {
		return null;
	}

	public static String match(String src, String regex, int index) {
		try {
			return matchAll(src, regex)[index];
		} catch (Exception e) {
			return null;
		}
	}

	public static String matchFirst(String src, String regex) {
		return match(src, regex, 1);
	}

	public static String[] matchAll(String src, String regex) {
		Matcher m = Pattern.compile(regex).matcher(src);
		String[] arr = null;
		if (m.find()) {
			arr = new String[m.groupCount() + 1];
			for (int i = 0; i < arr.length; i++) {
				arr[i] = m.group(i);
			}
		}
		return arr;
	}

}
