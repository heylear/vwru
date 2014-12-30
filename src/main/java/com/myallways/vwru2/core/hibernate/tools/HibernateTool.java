package com.myallways.vwru2.core.hibernate.tools;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.jdbc.core.JdbcTemplate;

import com.myallways.vwru2.core.hibernate.pojo.Entity;
import com.myallways.vwru2.core.util.StringUtils;

import freemarker.template.Configuration;
import freemarker.template.Template;

public abstract class HibernateTool {
	private static final String JAVA_EXTENSION = ".java";
	private JdbcTemplate jdbcTemplate;

	protected List loadColumnEntities() {
		return getJdbcTemplate().query(h2ColumnSql(), new ColumnMapper());
	}

	private String h2ColumnSql() {
		return "select a.table_name, a.remarks table_comment, b.column_name, b.remarks column_comment,"
				+ "b.type_name data_type,b.character_octet_length data_length,b.nullable, c.primary_key from information_schema.tables a "
				+ "left join information_schema.columns b "
				+ "on a.table_catalog = b.table_catalog and a.table_schema = b.table_schema and a.table_name = b.table_name "
				+ "left join information_schema.indexes c "
				+ "on a.table_catalog = c.table_catalog and a.table_schema = c.table_schema and a.table_name = c.table_name and b.column_name = c.column_name "
				+ "where a.table_catalog = 'VWRU' and a.table_schema = 'PUBLIC'"
				+ " and a.table_name='" + getTableName().toUpperCase() + "'";
	}

	public void generate() throws Exception {
		Configuration conf = new Configuration();
		conf.setDefaultEncoding("UTF-8");
		conf.setClassForTemplateLoading(this.getClass(), "../../../../../../");
		Map root = new HashedMap();
		Entity entity = (Entity) getModel();
		root.put("entity", entity);
		File file = new File(System.getProperty("src.path")
				+ StringUtils.replace(entity.getPackageDeclaration(), ".",
						File.separator));
		if (!file.exists()) {
			file.mkdirs();
		}
		getTemplate(conf).process(
				root,
				new OutputStreamWriter(new FileOutputStream(file
						.getAbsolutePath()
						+ File.separator
						+ entity.getDeclarationName() + JAVA_EXTENSION), conf
						.getDefaultEncoding()));
	}

	public abstract Object getModel();

	public abstract String getTableName();

	public abstract Template getTemplate(Configuration conf) throws IOException;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
