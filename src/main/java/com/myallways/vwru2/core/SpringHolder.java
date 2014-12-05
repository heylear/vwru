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
	 * ʵ��ApplicationContextAware�ӿ�, ע��Context����̬������.
	 */
	public void setApplicationContext(ApplicationContext applicationContext) {
		log.debug("==============> inject ApplicationContext into SpringHolder:"
				+ applicationContext);

		if (SpringHolder.applicationContext != null) {
			log.warn("SpringHolder�е�ApplicationContext������, ԭ��ApplicationContextΪ:"
					+ SpringHolder.applicationContext);
		}

		SpringHolder.applicationContext = applicationContext; // NOSONAR
	}

	/**
	 * ʵ��DisposableBean�ӿ�,��Context�ر�ʱ����̬����.
	 */
	public void destroy() throws Exception {
		SpringHolder.clear();
	}

	/**
	 * ȡ�ô洢�ھ�̬�����е�ApplicationContext.
	 */
	public static ApplicationContext getApplicationContext() {
		assertContextInjected();
		return applicationContext;
	}

	/**
	 * �Ӿ�̬����applicationContext��ȡ��Bean, �Զ�ת��Ϊ����ֵ���������.
	 */
	public static Object getBean(String name) {
		assertContextInjected();
		return applicationContext.getBean(name);
	}

	/**
	 * �Ӿ�̬����applicationContext��ȡ��Bean, �Զ�ת��Ϊ����ֵ���������.
	 */
	public static Map getBean(Class requiredType) {
		assertContextInjected();
		return applicationContext.getBeansOfType(requiredType);
	}

	/**
	 * ���SpringHolder�е�ApplicationContextΪNull.
	 */
	public static void clear() {
		log.debug("���SpringHolder�е�ApplicationContext:"
				+ applicationContext);
		applicationContext = null;
	}

	/**
	 * ���ApplicationContext��Ϊ��.
	 */
	private static void assertContextInjected() {
		if (applicationContext == null) {
			throw new IllegalStateException(
					"applicaitonContextδע��,����applicationContext.xml�ж���SpringHolder");
		}
	}
}
