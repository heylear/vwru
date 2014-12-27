package com.myallways.core;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.core.JdkVersion;

import junit.framework.TestCase;

public class DBTest extends TestCase {
	public Connection conn;
	public PreparedStatement ps;
	public ResultSet rs;

	protected void setUp() throws Exception {
		try {
			conn = DriverManager.getConnection(
					"jdbc:h2:tcp://localhost/database/vwru", "sa",
					"");
			conn.setAutoCommit(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void testConn() throws Exception {
		try {
			System.out.println(JdkVersion.getJavaVersion());
			//update("create table test_varchar(vname varchar2(10))");
		} finally {
			destrory();
		}
	}

	public void query(String sql) throws Exception {
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
	}
	
	public void update(String sql) throws Exception {
		ps = conn.prepareStatement(sql);
		ps.executeUpdate();
	}

	public void destrory() throws Exception {
		if (conn != null)
			conn.close();
		if (ps != null)
			ps.close();
		if (rs != null)
			rs.close();
	}
}
