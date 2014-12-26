package com.myallways.vwru2.core.support;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.StringTokenizer;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.core.io.Resource;

public class DataLoader implements InitializingBean {
	public static final String ACCEPT_ENCODING = "UTF-8";
	public static final String SCRIPT_DELIM = ";";
	public static final Logger log = Logger.getLogger(DataLoader.class);
	private DataSource dataSource;
	private Resource[] scripts;

	public DataLoader() {
	}

	private void executeResource() {
		for (int i = 0; i < scripts.length; i++) {
			String script = readResource(scripts[i]);
			StringTokenizer st = new StringTokenizer(script, SCRIPT_DELIM);
			while (st.hasMoreTokens()) {
				executeSqlScript(st.nextToken());
			}
		}
	}

	private void executeSqlScript(String script) {
		try {
			if (conn == null) {
				conn = dataSource.getConnection();
			}
			conn.prepareStatement(script).executeUpdate();
			log.debug("sql executed success! sql: " + script);
		} catch (Exception e) {
			log.warn("sql execute failed! sql: " + script + ". caused by "
					+ e.getMessage());
		}
	}

	private String readResource(Resource resource) {
		StringBuffer sb = new StringBuffer();
		try {
			InputStreamReader isr = new InputStreamReader(
					resource.getInputStream(), ACCEPT_ENCODING);
			BufferedReader br = new BufferedReader(isr);
			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line);
			}
		} catch (UnsupportedEncodingException e) {
			log.warn("warning: source encoding not surpported, please check neither the resource is UTF-8.");
		} catch (IOException e) {
			log.warn("warning: can't load resource caused by file not exists! resource name: "
					+ resource.getFilename());
		}
		return sb.toString();
	}

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public Resource[] getScripts() {
		return scripts;
	}

	public void setScripts(Resource[] scripts) {
		this.scripts = scripts;
	}

	public Connection conn;

	public void destroy() throws Exception {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			log.warn("warning: dataloader destrory failed, caused by "
					+ e.getMessage());
		}
	}

	public void afterPropertiesSet() throws Exception {
		executeResource();
		destroy();
	}
}
