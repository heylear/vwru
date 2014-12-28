package com.myallways.vwru2.core.hibernate.tools;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ColumnMapper implements RowMapper {

	public Object mapRow(ResultSet rs, int i) throws SQLException {
		ColumnEntity column = new ColumnEntity();
		column.setTableName(rs.getString("table_name"));
		column.setTableComment(rs.getString("table_comment"));
		column.setColumnName(rs.getString("column_name"));
		column.setColumnComment(rs.getString("column_comment"));
		column.setDataType(rs.getString("data_type"));
		column.setDataLength(rs.getInt("data_length"));
		column.setPrimaryKey(rs.getBoolean("primary_key"));
		if ("0".equals(rs.getString("nullable")))
			column.setNullable(true);
		return column;
	}

}
