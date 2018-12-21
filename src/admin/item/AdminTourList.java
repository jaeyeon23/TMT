package admin.item;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import admin.item.TourPagingAction;
import admin.notice.PagingAction;
import item.tour.TourVO;

public class AdminTourList extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=9;
	private int blockPage = 5;
	private String pagingHtml;
	private TourPagingAction page;
	
	private List<TourVO> list = new ArrayList<TourVO>();
	
	public AdminTourList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		/*list = sqlMapper.queryForList("tourList");
		
		totalCount = list.size(); // listü ũ- totalCount
		page = new TourPagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) //   ü  
			lastCount = page.getEndCount()+1; // +1 ϱ.
		//  ¡ϱ	
//		System.out.println("Ż: "+totalCount);
		list = list.subList(page.getStartCount(), lastCount);
		// listü ùٺ ٱ ƿ´.
//		System.out.println("Ʈ: "+list);
		*/
		return SUCCESS;
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

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public TourPagingAction getPage() {
		return page;
	}

	public void setPage(TourPagingAction page) {
		this.page = page;
	}

	public List<TourVO> getList() {
		return list;
	}

	public void setList(List<TourVO> list) {
		this.list = list;
	}	
}
