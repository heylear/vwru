package com.myallways.vwru2.core.hibernate.tools;

import java.util.StringTokenizer;

import com.myallways.vwru2.core.util.StringUtils;

public class NameHandler {
	public static final String NAME_SPLIT = "_";

	public static String transNameDDL2Java(String srcname, String prefix,
			String end, boolean isFirstUpper, String split) {
		srcname = StringUtils.matchFirst(srcname, prefix + "(\\w+)" + end);
		StringTokenizer st = new StringTokenizer(srcname.toLowerCase(), split);
		StringBuffer sb = new StringBuffer();
		while (st.hasMoreTokens()) {
			String token = st.nextToken();
			sb.append(StringUtils.firstUpper(token, true));
		}
		return StringUtils.firstUpper(sb.toString(), isFirstUpper);
	}

	public static String transNameDDL2Java(String srcname, String prefix,
			String end, boolean isFirstUpper) {
		return transNameDDL2Java(srcname, prefix, end, isFirstUpper,
				NAME_SPLIT);
	}

	public static String transNameDDL2Java(String srcname, String prefix,
			String end) {
		return transNameDDL2Java(srcname, prefix, end, false, NAME_SPLIT);
	}

	public static String transNameDDL2Java(String srcname, String prefix) {
		return transNameDDL2Java(srcname, prefix, StringUtils.EMPTY, false,
				NAME_SPLIT);
	}

	public static String transNameDDL2Java(String srcname) {
		return transNameDDL2Java(srcname, StringUtils.EMPTY,
				StringUtils.EMPTY, false, NAME_SPLIT);
	}

	public static String transTypeDDL2Java(String typename) {
		if("date".equalsIgnoreCase(typename))
			return "Timestamp";
		if("decimal".equalsIgnoreCase(typename))
			return "Long";
		if("number".equalsIgnoreCase(typename))
			return "Long";
		if("integer".equalsIgnoreCase(typename))
			return "Integer";
		return "String";
	}
	
	public static String transTypeDDL2JavaFullType(String typename) {
		if("date".equalsIgnoreCase(typename))
			return "java.sql.Timestamp";
		if("decimal".equalsIgnoreCase(typename))
			return "java.lang.Long";
		if("number".equalsIgnoreCase(typename))
			return "java.lang.Long";
		if("integer".equalsIgnoreCase(typename))
			return "java.lang.Integer";
		return "java.lang.String";
	}
}
