package com.myallways.vwru2.core.hibernate.tools;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.StringUtils;

import com.myallways.vwru2.core.hibernate.pojo.Entity;
import com.myallways.vwru2.core.hibernate.pojo.Property;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class DDL2ClassTool extends HibernateTool {
	private static final String POJO_TEMPLATE = "entity/Entity.ftl";
	String tableName = "ru_new_sys_user";
	String prefix = "ru_new";
	String suffix = StringUtils.EMPTY;
	String packageName = "com.myallways.vwru2.hibernate.maps";

	public Object getModel() {
		List list = loadColumnEntities();
		if (list == null || list.size() < 1)
			return null;
		ColumnEntity column = (ColumnEntity) list.get(0);
		Entity entity = new Entity();
		entity.setDeclarationName(NameHandler.transNameDDL2Java(tableName,
				prefix, suffix, true));
		entity.setDeclarationDoc(column.getTableComment());
		entity.setPackageDeclaration(packageName);
		for (Iterator iterator = loadColumnEntities().iterator(); iterator
				.hasNext();) {
			column = (ColumnEntity) iterator.next();
			Property property = new Property();
			property.setName(NameHandler.transNameDDL2Java(column
					.getColumnName()));
			property.setJavaDoc(column.getColumnComment());
			property.setTypeName(NameHandler.transTypeDDL2Java(column
					.getDataType()));
			property.setFullTypeName(NameHandler
					.transTypeDDL2JavaFullType(column.getDataType()));
			property.setGetterName(NameHandler.transNameDDL2Java("get_"
					+ column.getColumnName()));
			property.setSetterName(NameHandler.transNameDDL2Java("set_"
					+ column.getColumnName()));
			entity.addProperty(property);
		}
		return entity;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getPrefix() {
		return prefix;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public Template getTemplate(Configuration conf) throws IOException {
		return conf.getTemplate(POJO_TEMPLATE);
	}
}
