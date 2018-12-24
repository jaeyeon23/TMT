package service;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;


public class NoticeList extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=9;
	private int blockPage = 5;
	private String pagingHtml;
	private PagingAction page;
	
	private List<NoticeVO> list = new ArrayList<NoticeVO>();
	
	
	public NoticeList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		list = sqlMapper.queryForList("noticeList");
		
		totalCount = list.size(); 
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) 
			lastCount = page.getEndCount()+1; 

		list = list.subList(page.getStartCount(), lastCount);

		
		
		
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

	public PagingAction getPage() {
		return page;
	}

	public void setPage(PagingAction page) {
		this.page = page;
	}

	public List<NoticeVO> getList() {
		return list;
	}

	public void setList(List<NoticeVO> list) {
		this.list = list;
	}
	
}
