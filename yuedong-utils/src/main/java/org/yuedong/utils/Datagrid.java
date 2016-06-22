package org.yuedong.utils;

import java.util.List;

import org.yuedong.constants.PageConstants;

public class Datagrid<T> {

	private List<T> result;
	
	private T t;
	// 记录总数
	private int count;

	private int index = PageConstants.INTDEX;

	private int offset = PageConstants.OFFSET;
	private String orderBy;
	private String sort = PageConstants.ASC;
	private int pageSize = PageConstants.PAGE_SIZE;

	
	public void pagenation() {
		if (index != 0) {
			this.offset = (index - 1) * pageSize;
		}
	}
	
	
	public T getT() {
		return t;
	}


	public void setT(T t) {
		this.t = t;
	}


	public List<T> getResult() {
		return result;
	}


	public void setResult(List<T> result) {
		this.result = result;
	}


	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

}
