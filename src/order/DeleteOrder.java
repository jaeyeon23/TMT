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



public class DeleteOrder extends ActionSupport implements SessionAware{
	
	private static Reader reader;
	private static SqlMapClient sqlMapper;
	private Map session;
	

	private String id;
	private int no;
	
  private List<Order_Hotel> ohlist = new ArrayList<Order_Hotel>();
  private Order_Hotel hvo = new Order_Hotel();
	         
  private List<Order_Tour> otlist = new ArrayList<Order_Tour>();
  private Order_Tour tvo = new Order_Tour();
	   
 private List<Order_Air> oalist = new ArrayList<Order_Air>();
 private Order_Air avo = new Order_Air();

	public DeleteOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		//호텔
		hvo.setNo(no);
		hvo.setId((String) session.get("session_id"));
	    ohlist = sqlMapper.queryForList("deleteHorder",hvo);
		//투어
	    tvo.setNo(no);
		tvo.setId((String) session.get("session_id"));
	    otlist = sqlMapper.queryForList("deleteTorder",tvo);
	    //항공
	    avo.setNo(no);
	    avo.setId((String) session.get("session_id"));
	    oalist = sqlMapper.queryForList("deleteAorder",avo);

		return SUCCESS;
	}
	
	

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		DeleteOrder.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		DeleteOrder.sqlMapper = sqlMapper;
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

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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
	

}
