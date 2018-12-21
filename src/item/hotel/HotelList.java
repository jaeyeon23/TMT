package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient; 
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import item.hotel.HotelpagingAction;

public class HotelList extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper; 

	private List<HotelVO> Hotellist = new ArrayList<HotelVO>();
	
	// private HotelVO hvo = new HotelVO();

	private int currentPage = 1; 
	private int totalCount;  
	private int blockCount = 10; 
	private int blockPage = 5; 
	private String pagingHtml; 
	private HotelpagingAction page; 

	
	public HotelList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	
	public String execute() throws Exception {
	
		Hotellist = sqlMapper.queryForList("selectAllH");

		totalCount = Hotellist.size(); 

	
		page = new HotelpagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();

		
		int lastCount = totalCount;
		
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		
		Hotellist = Hotellist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	public List<HotelVO> getHotellist() {
		return Hotellist;
	}

	public void setHotellist(List<HotelVO> hotellist) {
		Hotellist = hotellist;
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

	public HotelpagingAction getPage() {
		return page;
	}
	public void setPage(HotelpagingAction page) {
		this.page = page;
	}

}
	
	