package com.myallways.vwru2.support.web;

import com.myallways.vwru2.core.support.DataContainer;
import com.myallways.vwru2.core.web.DefaultActionSupport;

public class MenuManagerAction extends DefaultActionSupport {

	private static final long serialVersionUID = -3827877892086373326L;
	
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String list() throws Exception{
		renderText(DataContainer.getMemuJson());
		return null;
	}
	
	public String edit() throws Exception{
		return null;
	}
}
