package com.myallways.vwru2.core.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.jdbc.core.ColumnMapRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DefaultService {
	private JdbcTemplate jdbcTemplate;
	private SessionFactory sessionFactory;

	public List queryBySql(String sql) {
		return queryBySql(sql, new ColumnMapRowMapper() {
			protected String getColumnKey(String columnName) {
				return columnName.toLowerCase();
			}
		});
	}

	public List queryBySql(String sql, RowMapper mapper) {
		return queryBySql(sql, mapper, null);
	}

	public List queryBySql(String sql, RowMapper mapper, Object[] params) {
		return jdbcTemplate.query(sql, params, mapper);
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
