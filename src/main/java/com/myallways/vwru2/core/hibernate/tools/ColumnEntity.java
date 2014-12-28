package com.myallways.vwru2.core.hibernate.tools;

public class ColumnEntity {
	String tableName;
	String tableComment;
	String columnName;
	String columnComment;
	String dataType;
	int dataLength;
	boolean nullable;
	boolean primaryKey;

	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((columnComment == null) ? 0 : columnComment.hashCode());
		result = prime * result
				+ ((columnName == null) ? 0 : columnName.hashCode());
		result = prime * result + dataLength;
		result = prime * result
				+ ((dataType == null) ? 0 : dataType.hashCode());
		result = prime * result + (nullable ? 1231 : 1237);
		result = prime * result + (primaryKey ? 1231 : 1237);
		result = prime * result
				+ ((tableComment == null) ? 0 : tableComment.hashCode());
		result = prime * result
				+ ((tableName == null) ? 0 : tableName.hashCode());
		return result;
	}

	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ColumnEntity other = (ColumnEntity) obj;
		if (columnComment == null) {
			if (other.columnComment != null)
				return false;
		} else if (!columnComment.equals(other.columnComment))
			return false;
		if (columnName == null) {
			if (other.columnName != null)
				return false;
		} else if (!columnName.equals(other.columnName))
			return false;
		if (dataLength != other.dataLength)
			return false;
		if (dataType == null) {
			if (other.dataType != null)
				return false;
		} else if (!dataType.equals(other.dataType))
			return false;
		if (nullable != other.nullable)
			return false;
		if (primaryKey != other.primaryKey)
			return false;
		if (tableComment == null) {
			if (other.tableComment != null)
				return false;
		} else if (!tableComment.equals(other.tableComment))
			return false;
		if (tableName == null) {
			if (other.tableName != null)
				return false;
		} else if (!tableName.equals(other.tableName))
			return false;
		return true;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getTableComment() {
		return tableComment;
	}

	public void setTableComment(String tableComment) {
		this.tableComment = tableComment;
	}

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public String getColumnComment() {
		return columnComment;
	}

	public void setColumnComment(String columnComment) {
		this.columnComment = columnComment;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public int getDataLength() {
		return dataLength;
	}

	public void setDataLength(int dataLength) {
		this.dataLength = dataLength;
	}

	public boolean isNullable() {
		return nullable;
	}

	public void setNullable(boolean nullable) {
		this.nullable = nullable;
	}

	public boolean isPrimaryKey() {
		return primaryKey;
	}

	public void setPrimaryKey(boolean primaryKey) {
		this.primaryKey = primaryKey;
	}

	public String toString() {
		return "ColumnEntity [tableName=" + tableName + ", tableComment="
				+ tableComment + ", columnName=" + columnName
				+ ", columnComment=" + columnComment + ", dataType=" + dataType
				+ ", dataLength=" + dataLength + ", nullable=" + nullable
				+ ", primaryKey=" + primaryKey + "]";
	}

}
