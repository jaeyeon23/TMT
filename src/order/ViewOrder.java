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

public class ViewOrder extends ActionSupport implements SessionAware {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private List<Order_Hotel> ohlist = new ArrayList<Order_Hotel>();
    private Order_Hotel hvo = new Order_Hotel();
	         
	  private List<Order_Tour> otlist = new ArrayList<Order_Tour>();
	  private Order_Tour tvo = new Order_Tour();
	   
	   private List<Order_Air> oalist = new ArrayList<Order_Air>();
	   private Order_Air avo = new Order_Air();
	   
	 private String id;
	 private int no;


	public ViewOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}

	
	@Override
	public String execute() throws Exception {
		
		//호텔
		 hvo.setId((String) session.get("session_id"));
		 hvo.setNo(no);
	      ohlist = sqlMapper.queryForList("selectH_view",hvo);
		//투어
	      tvo.setId((String) session.get("session_id"));
	      otlist = sqlMapper.queryForList("selectT_view",tvo);
		//항공
	      avo.setId((String) session.get("session_id"));
	      oalist = sqlMapper.queryForList("selectA_view",avo);
		
		return SUCCESS;
	}


	public static Reader getReader() {
		return reader;
	}


	public static void setReader(Reader reader) {
		ViewOrder.reader = reader;
	}


	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}


	public static void setSqlMapper(SqlMapClient sqlMapper) {
		ViewOrder.sqlMapper = sqlMapper;
	}


	public Map getSession() {
		return session;
	}


	public void setSession(Map session) {
		this.session = session;
	}


	public List<Order_Hotel> getOhlist() {
		return ohlist;
	}


	public void setOhlist(List<Order_Hotel> ohlist) {
		this.ohlist = ohlist;
	}


	public Order_Hotel getHvo() {
		return hvo;
	}


	public void setHvo(Order_Hotel hvo) {
		this.hvo = hvo;
	}


	public List<Order_Tour> getOtlist() {
		return otlist;
	}


	public void setOtlist(List<Order_Tour> otlist) {
		this.otlist = otlist;
	}


	public Order_Tour getTvo() {
		return tvo;
	}


	public void setTvo(Order_Tour tvo) {
		this.tvo = tvo;
	}


	public List<Order_Air> getOalist() {
		return oalist;
	}


	public void setOalist(List<Order_Air> oalist) {
		this.oalist = oalist;
	}


	public Order_Air getAvo() {
		return avo;
	}


	public void setAvo(Order_Air avo) {
		this.avo = avo;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}
	
	
}
