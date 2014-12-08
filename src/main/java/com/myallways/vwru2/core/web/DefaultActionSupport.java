package com.myallways.vwru2.core.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;

import com.myallways.vwru2.core.Constants;
import com.opensymphony.webwork.interceptor.ServletRequestAware;
import com.opensymphony.webwork.interceptor.ServletResponseAware;
import com.opensymphony.xwork.ActionSupport;

public class DefaultActionSupport extends ActionSupport implements ServletRequestAware, ServletResponseAware{

	private static final long serialVersionUID = -8569946074923335519L;
	
	protected Logger log = Logger.getLogger(this.getClass()); 
	
	protected HttpServletResponse response;
	
	protected HttpServletRequest request;
	
	private String param;

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getParam() {
		return param;
	}
	
	public String[] getParams() {
		return StringUtils.tokenizeToStringArray(param, Constants.COMMA);
	}

	public void setParam(String param) {
		this.param = param;
	}

}
