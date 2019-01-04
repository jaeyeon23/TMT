package admin.order;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import order.OrderVO;
import order.Order_Air;
import order.Order_Hotel;
import order.Order_Tour;

public class AdminOrderView extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private String c;
	private int currnetPage;
	private int no;
	private String id;
	OrderVO resultClass;
	private Map type = new HashMap();
	
	public AdminOrderView() throws IOException{
	     reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	     sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	     reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		String cc = getC();
		type.put("no", getNo());
		type.put("id", getId());
		if(cc==null||cc.equals("h")) {
			resultClass = (Order_Hotel)sqlMapper.queryForObject("orderHView",type);
		}else if(cc.equals("a")) {
			resultClass = (Order_Air)sqlMapper.queryForObject("orderAView",type);
		}else {
			resultClass = (Order_Tour)sqlMapper.queryForObject("orderTView",type);
		}
		
		return SUCCESS;
	}
	
	
	
	

	
	public OrderVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(OrderVO resultClass) {
		this.resultClass = resultClass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Map getSession() {
		return session;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public int getCurrnetPage() {
		return currnetPage;
	}

	public void setCurrnetPage(int currnetPage) {
		this.currnetPage = currnetPage;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}
	

}
