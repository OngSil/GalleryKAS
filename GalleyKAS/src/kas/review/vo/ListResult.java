package kas.review.vo;

import java.util.ArrayList;
import java.util.List;

import kas.domain.Review;

public class ListResult {
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private ArrayList<Review> list;
	private long totalPageCount;
	
	public ListResult() {}

	public ListResult(int currentPage, long totalCount, int pageSize, ArrayList<Review> list, long totalPageCount) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
	}
	private long calTotalPageCount() {
	      long tpc = totalCount/pageSize; 
	      if(totalCount%pageSize != 0) tpc++;
	      
	      return tpc;
	 }
	
	public int getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public ArrayList<Review> getList() {
		return list;
	}

	public void setList(ArrayList<Review> list) {
		this.list = list;
	}

	public long getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(long totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
}
