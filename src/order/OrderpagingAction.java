package order;

public class OrderpagingAction {
	
	private int currentPage; 
	private int totalCount;
	private int totalPage; 
	private int blockCount; 
	private int blockPage; 
	private int startCount; 
	private int endCount; 
	private int startPage; 
	private int endPage; 
	private String search;
	private int searchn;

	private StringBuffer pagingHtml;

	
	public OrderpagingAction(int currentPage, int currentPage2, int currentPage3, int totalCount, int blockCount, int blockPage) {

		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;


		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}

		if (currentPage > totalPage) {
			currentPage = totalPage;
		}

		startCount = (currentPage - 1) * blockCount;
		endCount = startCount + blockCount - 1;

		startPage = (int) ((currentPage - 1) / blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;

		if (endPage > totalPage) {
			endPage = totalPage;
		}

		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			pagingHtml.append("<a href=OrderList.action?currentPage="
					+ (startPage - 1) + "&currentPage2="+currentPage2+"&currentPage3="+currentPage3+">");
			pagingHtml.append("이전");
			pagingHtml.append("</a>");
		}

		pagingHtml.append("&nbsp;|&nbsp;");

		//페이지 번호.현재 페이지는 빨간색으로 강조하고 링크를 제거.
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append("&nbsp;<b> <font color='red'>");
				pagingHtml.append(i);
				pagingHtml.append("</font></b>");
			} else {
				pagingHtml
						.append("&nbsp;<a href='OrderList.action?currentPage=");
				pagingHtml.append(i);
				pagingHtml.append("&currentPage2=" + currentPage2 + "&currentPage3=" + currentPage3 + "'>");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}

			pagingHtml.append("&nbsp;");
		}

		pagingHtml.append("&nbsp;&nbsp;|&nbsp;&nbsp;");

		// 다음 block 페이지
		if (totalPage - startPage >= blockPage) {
			pagingHtml.append("<a href=OrderList.action?currentPage="
					+ (endPage + 1) + "&currentPage2=" + currentPage2 + "&currentPage3=" + currentPage3 + ">");
			pagingHtml.append("다음");
			pagingHtml.append("</a>");
		}
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getBlockCount() {
		return blockCount;
	}


	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}


	public int getBlockPage() {
		return blockPage;
	}


	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}


	public int getStartCount() {
		return startCount;
	}


	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}


	public int getEndCount() {
		return endCount;
	}


	public void setEndCount(int endCount) {
		this.endCount = endCount;
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


	public String getSearch() {
		return search;
	}


	public void setSearch(String search) {
		this.search = search;
	}


	public int getSearchn() {
		return searchn;
	}


	public void setSearchn(int searchn) {
		this.searchn = searchn;
	}


	public StringBuffer getPagingHtml() {
		return pagingHtml;
	}


	public void setPagingHtml(StringBuffer pagingHtml) {
		this.pagingHtml = pagingHtml;
	}
	
}
	