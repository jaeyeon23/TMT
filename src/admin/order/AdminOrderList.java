package admin.order;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import admin.order.OrderPaging;
import order.OrderVO;

public class AdminOrderList extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=9;
	private int blockPage = 5;
	private String pagingHtml;
	private OrderPaging page;
	
	private List<OrderVO> list = new ArrayList<OrderVO>();
	
	public AdminOrderList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	public String execute() throws Exception {
		list = sqlMapper.queryForList("orderList");
		
		totalCount = list.size(); 
		page = new OrderPaging(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) 
			lastCount = page.getEndCount()+1; 

		list = list.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}










}