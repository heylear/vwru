package com.myallways.vwru2.core.service;

import java.util.List;

public class DataContainerService extends DefaultService {

	public List loadAllMenus() {
		String sql = "select imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri from ru_new_sys_menu";
		return queryBySql(sql);
	}

}
