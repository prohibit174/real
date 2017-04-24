package kosta.model;

import java.util.List;

public class ListModel {
	//리스트를 가지고 있어야한다.
	private List<Board> list;
	private int requestPage; // 요청하는 현재 페이지
	private int totalPageCount; // 총 페이지 개수
	private int startPage;
	private int endPage;
	
	public ListModel(){}
	
	public ListModel(List<Board> list, int requestPage, int totalPageCount, int startPage, int endPage) {
		super();
		this.list = list;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public List<Board> getList() {
		return list;
	}

	public void setList(List<Board> list) {
		this.list = list;
	}

	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


}
