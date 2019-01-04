package order;

public class OrderpagingAction3 {
	
	private int currentPage3; 
	private int totalCount3;
	private int totalPage3; 
	private int blockCount3; 
	private int blockPage3; 
	private int startCount3; 
	private int endCount3; 
	private int startPage3; 
	private int endPage3; 
	private String search3;
	private int searchn3;

	private StringBuffer pagingHtml3;

	
	public OrderpagingAction3(int currentPage3, int totalCount3, int blockCount3, int blockPage3) {

		this.blockCount3 = blockCount3;
		this.blockPage3 = blockPage3;
		this.currentPage3 = currentPage3;
		this.totalCount3 = totalCount3;


		totalPage3 = (int) Math.ceil((double) totalCount3 / blockCount3);
		if (totalPage3 == 0) {
			totalPage3 = 1;
		}

		if (currentPage3 > totalPage3) {
			currentPage3 = totalPage3;
		}

		startCount3 = (currentPage3 - 1) * blockCount3;
		endCount3 = startCount3 + blockCount3 - 1;

		startPage3 = (int) ((currentPage3 - 1) / blockPage3) * blockPage3 + 1;
		endPage3 = startPage3 + blockPage3 - 1;

		if (endPage3 > totalPage3) {
			endPage3 = totalPage3;
		}

		pagingHtml3 = new StringBuffer();
		if (currentPage3 > blockPage3) {
			pagingHtml3.append("<a href=OrderList.action?currentPage3="
					+ (startPage3 - 1) + ">");
			pagingHtml3.append("이전");
			pagingHtml3.append("</a>");
		}

		pagingHtml3.append("&nbsp;|&nbsp;");

		//페이지 번호.현재 페이지는 빨간색으로 강조하고 링크를 제거.
		for (int i = startPage3; i <= endPage3; i++) {
			if (i > totalPage3) {
				break;
			}
			if (i == currentPage3) {
				pagingHtml3.append("&nbsp;<b> <font color='red'>");
				pagingHtml3.append(i);
				pagingHtml3.append("</font></b>");
			} else {
				pagingHtml3
						.append("&nbsp;<a href='OrderList.action?currentPage3=");
				pagingHtml3.append(i);
				pagingHtml3.append("'>");
				pagingHtml3.append(i);
				pagingHtml3.append("</a>");
			}

			pagingHtml3.append("&nbsp;");
		}

		pagingHtml3.append("&nbsp;&nbsp;|&nbsp;&nbsp;");

		// 다음 block 페이지
		if (totalPage3 - startPage3 >= blockPage3) {
			pagingHtml3.append("<a href=OrderList.action?currentPage3="
					+ (endPage3 + 1) + ">");
			pagingHtml3.append("다음");
			pagingHtml3.append("</a>");
		}
	}


	public int getCurrentPage3() {
		return currentPage3;
	}


	public void setCurrentPage3(int currentPage3) {
		this.currentPage3 = currentPage3;
	}


	public int getTotalCount3() {
		return totalCount3;
	}


	public void setTotalCount3(int totalCount3) {
		this.totalCount3 = totalCount3;
	}


	public int getTotalPage3() {
		return totalPage3;
	}


	public void setTotalPage3(int totalPage3) {
		this.totalPage3 = totalPage3;
	}


	public int getBlockCount3() {
		return blockCount3;
	}


	public void setBlockCount3(int blockCount3) {
		this.blockCount3 = blockCount3;
	}


	public int getBlockPage3() {
		return blockPage3;
	}


	public void setBlockPage3(int blockPage3) {
		this.blockPage3 = blockPage3;
	}


	public int getStartCount3() {
		return startCount3;
	}


	public void setStartCount3(int startCount3) {
		this.startCount3 = startCount3;
	}


	public int getEndCount3() {
		return endCount3;
	}


	public void setEndCount3(int endCount3) {
		this.endCount3 = endCount3;
	}


	public int getStartPage3() {
		return startPage3;
	}


	public void setStartPage3(int startPage3) {
		this.startPage3 = startPage3;
	}


	public int getEndPage3() {
		return endPage3;
	}


	public void setEndPage3(int endPage3) {
		this.endPage3 = endPage3;
	}


	public String getSearch3() {
		return search3;
	}


	public void setSearch3(String search3) {
		this.search3 = search3;
	}


	public int getSearchn3() {
		return searchn3;
	}


	public void setSearchn3(int searchn3) {
		this.searchn3 = searchn3;
	}


	public StringBuffer getPagingHtml3() {
		return pagingHtml3;
	}


	public void setPagingHtml(StringBuffer pagingHtml3) {
		this.pagingHtml3 = pagingHtml3;
	}
	
}
	