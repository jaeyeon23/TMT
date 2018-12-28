package item.tour;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient; 
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import item.tour.TourpagingAction;
import org.apache.struts2.interceptor.SessionAware;
public class TourList extends ActionSupport implements SessionAware{
	
	public static Reader reader; //  Ʈ  reader.
	public static SqlMapClient sqlMapper; // SqlMapClient API ϱ  sqlMapper ü.

	private List<TourVO> Tourlist = new ArrayList<TourVO>();
	private Map session;
	
	private int currentPage = 1; //  
	private int totalCount; //  Խù 
	private int blockCount = 10; //   Խù 
	private int blockPage = 5; //  ȭ鿡   
	private String pagingHtml; // ¡  HTML
	private TourpagingAction page; // ¡ Ŭ

	// 
	public TourList() throws IOException {
			reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml   ´.
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml   sqlMapper ü .
			reader.close();
	}

	// Խ Ʈ ׼
	public String execute() throws Exception {
		//   Ʈ 
		Tourlist = sqlMapper.queryForList("selectAllT");
		
		totalCount = Tourlist.size(); // ü Խñ 

		// TourpagingAction ü .
		page = new TourpagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();

		//      ȣ .
		int lastCount = totalCount;
		// lastCount +1 ȣ .
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// ü Ʈ  ŭ Ʈ ´.
		Tourlist = Tourlist.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	public List<TourVO> getHotellist() {
		return Tourlist;
	}

	public void setHotellist(List<TourVO> tourlist) {
		Tourlist = tourlist;
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

	public TourpagingAction getPage() {
		return page;
	}
	public void setPage(TourpagingAction page) {
		this.page = page;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
}

















