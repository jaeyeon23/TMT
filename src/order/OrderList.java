package order;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import basket.BasketVO;

public class OrderList extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	private OrderVO ovo = new OrderVO();
	private List<OrderVO> olist = new ArrayList<OrderVO>();
	private String id;
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private OrderpagingAction page;
	
  public OrderList() throws IOException {
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}

	
	@Override
	public String execute() throws Exception {
		ovo.setId(id);
		olist = sqlMapper.queryForList("selectOneo",ovo);
		
		totalCount = olist.size();
		page = new OrderpagingAction(currentPage,totalCount,blockCount,blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount()<totalCount)
			lastCount = page.getEndCount() +1;
		
		olist = olist.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}


	public static Reader getReader() {
		return reader;
	}


	public static void setReader(Reader reader) {
		OrderList.reader = reader;
	}


	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}


	public static void setSqlMapper(SqlMapClient sqlMapper) {
		OrderList.sqlMapper = sqlMapper;
	}



	public List<OrderVO> getOlist() {
		return olist;
	}


	public void setOlist(List<OrderVO> olist) {
		this.olist = olist;
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


	public OrderpagingAction getPage() {
		return page;
	}


	public void setPage(OrderpagingAction page) {
		this.page = page;
	}
	 public Map getSession() {
      return session;
   }

   public void setSession(Map session) {
      this.session = session;
   }


public OrderVO getOvo() {
	return ovo;
}


public void setOvo(OrderVO ovo) {
	this.ovo = ovo;
}


public String getId() {
	return id;
}


public void setId(String id) {
	this.id = id;
}
   
	

}
