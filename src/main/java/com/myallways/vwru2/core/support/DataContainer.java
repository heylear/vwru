package com.myallways.vwru2.core.support;

import com.myallways.vwru2.core.service.DataContainerService;
import com.myallways.vwru2.core.util.JSONUtils;

public class DataContainer{
	private static DataContainerService containerService;

	private static String memuJson;

	public static void refresh() {
		refreshMenuJson();
	}

	private static void refreshMenuJson() {
		memuJson = JSONUtils.stringify(getContainerService().loadAllMenus());
	}

	public static String getMemuJson() {
		return memuJson;
	}

	public static void setMemuJson(String memuJson) {
		DataContainer.memuJson = memuJson;
	}

	public static DataContainerService getContainerService() {
		return containerService;
	}

	public static void setContainerService(DataContainerService containerService) {
		DataContainer.containerService = containerService;
	}

}
