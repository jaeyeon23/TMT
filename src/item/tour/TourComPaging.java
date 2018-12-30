package item.tour;

public class TourComPaging {

	private int currentPageC;   // 현재페이지
	private int totalCount;	 // 전체 게시물 수
	private int totalPage;	 // 전체 페이지 수
	private int blockCount;	 // 한 페이지의  게시물의 수
	private int blockPage;	 // 한 화면에 보여줄 페이지 수
	private int startCount;	 // 한 페이지에서 보여줄 게시글의 시작 번호
	private int endCount;	 // 한 페이지에서 보여줄 게시글의 끝 번호
	private int startPage;	 // 시작 페이지
	private int endPage;	 // 마지막 페이지

	private StringBuffer cPagingHtml;

	// 페이징 생성자
	public TourComPaging(int no,int currentPage,int currentPageC, int totalCount, int blockCount,
			int blockPage) {

		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPageC = currentPageC;
		this.totalCount = totalCount;

		// 전체 페이지 수
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}

		// 현재 페이지가 전체 페이지 수보다 크면 전체 페이지 수로 설정
		if (currentPageC > totalPage) {
			currentPageC = totalPage;
		}

		// 현재 페이지의 처음과 마지막 글의 번호 가져오기.
		endCount = currentPageC * blockCount;
		startCount = endCount - (blockCount - 1);
		
		// 시작 페이지와 마지막 페이지 값 구하기.
		startPage = (int) ((currentPageC - 1) / blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;

		// 마지막 페이지가 전체 페이지 수보다 크면 전체 페이지 수로 설정
		if (endPage > totalPage) {
			endPage = totalPage;
		}

		
		cPagingHtml = new StringBuffer()
		.append("<nav><ul class='pagination'>");
		
		// 이전 block 페이지
		if(currentPageC > blockPage) {
			cPagingHtml.append("<li>")
			.append("<a href=TourView.action?no=")
			.append(no)
			.append("&currentPage=")
			.append(currentPage)
			.append("&currentPageC=")
			.append(startPage - 1)
			.append(" aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a>");
		}
		//페이지 block
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPageC) {
				cPagingHtml.append("<li class='active'><a>")
				.append(i)
				.append("</a></li>");
			} else {
				cPagingHtml.append("<li><a href='TourView.action?no=")
				.append(no)
				.append("&currentPage=")
				.append(currentPage)
				.append("&currentPageC=")
				.append(i)
				.append("'>")
				.append(i)
				.append("</a></li>");
			}
		}
		//다음 block 페이지
		if (totalPage - startPage >= blockPage) {
			cPagingHtml.append("<li>")
			.append("<a href=TourView.action?no=")
			.append(no)
			.append("&currentPage=")
			.append(currentPage)
			.append("&currentPageC=")
			.append(endPage + 1)
			.append(" aria-label=Next><span aria-hidden='true'>&raquo;</span></a></li></ul></nav>");
		}
	}	

	public int getCurrentPage() {
		return currentPageC;
	}

	public void setCurrentPage(int currentPageC) {
		this.currentPageC = currentPageC;
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

	public StringBuffer getPagingHtml() {
		return cPagingHtml;
	}

	public void setPagingHtml(StringBuffer cPagingHtml) {
		this.cPagingHtml = cPagingHtml;
	}
}
