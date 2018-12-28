package basket;


import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class BasketList extends ActionSupport{
	
	private Reader reader;
	private SqlMapClient sqlMapper;

	private List<BasketVO> blist = new ArrayList<BasketVO>();
	private BasketVO bvo = new BasketVO();
	
	private String id;
	
	private int currentPage = 1; 
	private int totalCount; 
	private int blockCount = 3; 
	private int blockPage = 5; 
	private String pagingHtml; 
	private BasketpagingAction page; 

	public BasketList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	@Override
	public String execute() throws Exception {
		
		bvo.setId(id);

		blist = sqlMapper.queryForList("selectbasket", bvo);

		totalCount = blist.size();

		if (currentPage == 0) {
			currentPage = 1;
		}
		page = new BasketpagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		blist = blist.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}

	public Reader getReader() {
		return reader;
	}

	public void setReader(Reader reader) {
		this.reader = reader;
	}

	public SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public List<BasketVO> getBlist() {
		return blist;
	}

	public void setBlist(List<BasketVO> blist) {
		this.blist = blist;
	}

	public BasketVO getBvo() {
		return bvo;
	}

	public void setBvo(BasketVO bvo) {
		this.bvo = bvo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public BasketpagingAction getPage() {
		return page;
	}

	public void setPage(BasketpagingAction page) {
		this.page = page;
	}
	
	

}
