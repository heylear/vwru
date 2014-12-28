package com.myallways.core;

import junit.framework.TestCase;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.myallways.vwru2.core.hibernate.tools.HibernateTool;

public class HibernateToolTest extends TestCase {
	ApplicationContext context;

	protected void setUp() throws Exception {
		try {
			context = new ClassPathXmlApplicationContext(
					"spring/application.xml");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void testDDL2Class() {
		HibernateTool tool = (HibernateTool) context.getBean("ddl2ClassTool");
		try {
			tool.generate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
