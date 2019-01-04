package admin.order;

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

public class AdminOrderList extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=2;
	private int blockPage = 1;
	private String pagingHtml;
	private OrderPaging page;
	private String c;
	private String cc;
	
	private List list = new ArrayList();
	public AdminOrderList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	public String execute() throws Exception {
		cc = getC();
		
		if(cc==null || cc.equals("h")) {
			list = sqlMapper.queryForList("orderHList");
		}else if(cc.equals("a")) {
			list = sqlMapper.queryForList("orderAList");
		}else {
			list = sqlMapper.queryForList("orderTList"); 
		}
		
		totalCount = list.size(); 
		page = new OrderPaging(currentPage, totalCount, blockCount, blockPage,getC());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) 
			lastCount = page.getEndCount()+1; 

		list = list.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	
	
	
	public String getCc() {
		return cc;
	}
	public void setCc(String cc) {
		this.cc = cc;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
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
	public OrderPaging getPage() {
		return page;
	}
	public void setPage(OrderPaging page) {
		this.page = page;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}

public Map getSession() {
	return session;
}

public void setSession(Map session) {
	this.session = session;
}

}
