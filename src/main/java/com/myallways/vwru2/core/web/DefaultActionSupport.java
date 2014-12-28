package com.myallways.vwru2.core.web;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;

import com.myallways.vwru2.core.Constants;
import com.myallways.vwru2.core.common.Page;
import com.opensymphony.webwork.interceptor.ServletRequestAware;
import com.opensymphony.webwork.interceptor.ServletResponseAware;
import com.opensymphony.xwork.ActionSupport;

public class DefaultActionSupport extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private static final long serialVersionUID = -8569946074923335519L;

	protected Logger log = Logger.getLogger(this.getClass());

	protected HttpServletResponse response;

	protected HttpServletRequest request;

	protected static final String CONTENT_DEFAULT_ENCODING = "UTF-8";

	protected static final String CONTENT_TYPE_JSON = "application/json";

	protected static final String CONTENT_TYPE_HTML = "text/html";

	protected static final String CONTENT_TYPE_OCTETSTREAM = "application/octet-stream";

	protected static final String CONTENT_TYPE_MS_EXCEL = "application/vnd.ms-excel";

	protected static final String CONTENT_TYPE_MS_DOC = "application/msword";

	protected static final String CONTENT_TYPE_MS_PDF = "application/pdf";

	protected String param;
	
	protected Page page;

	protected void render() {
		render(CONTENT_DEFAULT_ENCODING);
	}

	protected void render(String encoding) {
		render(encoding, CONTENT_TYPE_HTML);
	}

	protected void render(String encoding, String contentType) {
		response.setContentType(contentType + ";charset=" + encoding);
	}

	protected void renderText(String text) {
		renderText(text, CONTENT_DEFAULT_ENCODING);
	}

	protected void renderText(String text, String encoding) {
		renderText(text, encoding, CONTENT_TYPE_HTML);
	}

	protected void renderText(String text, String encoding, String contentType) {
		render(encoding, contentType);
		try {
			response.getWriter().write(text);
		} catch (IOException e) {
			log.error("response write error:", e);
		}
	}

	protected void renderFile(InputStream in, String filename) {
		renderFile(in, filename, CONTENT_DEFAULT_ENCODING);
	}

	protected void renderFile(InputStream in, String filename, String encoding) {
		renderFile(in, filename, encoding, CONTENT_TYPE_HTML);
	}

	protected void renderFile(InputStream in, String filename, String encoding,
			String contentType) {
		render(encoding, contentType);
		try {
			response.setHeader("Content-Disposition", "attachment; filename=\""
					+ new String(filename.getBytes("gb2312"), "ISO-8859-1")
					+ "\";");
			byte[] buf = new byte[1024];
			while (in.read(buf) > -1){
				response.getOutputStream().write(buf);
			}
		} catch (Exception e) {
			log.error("response write error:", e);
		} 

	}

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

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

}
