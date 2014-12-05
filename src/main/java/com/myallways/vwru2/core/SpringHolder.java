package com.myallways.vwru2.core;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringHolder implements ApplicationContextAware, DisposableBean {

	private static ApplicationContext applicationContext = null;

	private static Logger log = Logger.getLogger(SpringHolder.class);

	/**
	 * 实现ApplicationContextAware接口, 注入Context到静态变量中.
	 */
	public void setApplicationContext(ApplicationContext applicationContext) {
		log.debug("==============> inject ApplicationContext into SpringHolder:"
				+ applicationContext);

		if (SpringHolder.applicationContext != null) {
			log.warn("SpringHolder中的ApplicationContext被覆盖, 原有ApplicationContext为:"
					+ SpringHolder.applicationContext);
		}

		SpringHolder.applicationContext = applicationContext; // NOSONAR
	}

	/**
	 * 实现DisposableBean接口,在Context关闭时清理静态变量.
	 */
	public void destroy() throws Exception {
		SpringHolder.clear();
	}

	/**
	 * 取得存储在静态变量中的ApplicationContext.
	 */
	public static ApplicationContext getApplicationContext() {
		assertContextInjected();
		return applicationContext;
	}

	/**
	 * 从静态变量applicationContext中取得Bean, 自动转型为所赋值对象的类型.
	 */
	public static Object getBean(String name) {
		assertContextInjected();
		return applicationContext.getBean(name);
	}

	/**
	 * 从静态变量applicationContext中取得Bean, 自动转型为所赋值对象的类型.
	 */
	public static Map getBean(Class requiredType) {
		assertContextInjected();
		return applicationContext.getBeansOfType(requiredType);
	}

	/**
	 * 清除SpringHolder中的ApplicationContext为Null.
	 */
	public static void clear() {
		log.debug("清除SpringHolder中的ApplicationContext:"
				+ applicationContext);
		applicationContext = null;
	}

	/**
	 * 检查ApplicationContext不为空.
	 */
	private static void assertContextInjected() {
		if (applicationContext == null) {
			throw new IllegalStateException(
					"applicaitonContext未注入,请在applicationContext.xml中定义SpringHolder");
		}
	}
}
