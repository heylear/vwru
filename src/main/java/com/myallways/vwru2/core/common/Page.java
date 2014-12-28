package com.myallways.vwru2.core.common;

import java.util.List;

public class Page {
	/**
	 * 每页显示记录数
	 */
	int lines;
	
	/**
	 * 当前页码
	 */
	int currentPage;
	
	/**
	 * 排序索引
	 */
	String sortIndex;
	
	/**
	 * 排序方式
	 */	
	String sortType;
	
	/**
	 * 总页码数
	 */
	int totalPages;
	
	/**
	 * 总记录数
	 */
	int totalCount;
	
	/**
	 * 查询结果集
	 */
	List result;

	public Page() {
		super();
	}

	public int getLines() {
		return lines;
	}

	public void setLines(int lines) {
		this.lines = lines;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getSortIndex() {
		return sortIndex;
	}

	public void setSortIndex(String sortIndex) {
		this.sortIndex = sortIndex;
	}

	public String getSortType() {
		return sortType;
	}

	public void setSortType(String sortType) {
		this.sortType = sortType;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public List getResult() {
		return result;
	}

	public void setResult(List result) {
		this.result = result;
	}

}
