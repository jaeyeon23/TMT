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
	
	private Order_Hotel hoteldelClass;
	private Order_Hotel hoteldelRClass;
	
	private Order_Tour tourdelClass;
	private Order_Tour tourdelRClass;
	
	private Order_Air airdelClass;
	private Order_Air airdelRClass;
	

	private String id;
	private int no;
	
  

	public DeleteOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {

		return SUCCESS;
	}
	
	public String Delete() throws Exception{

		//호텔
		
		hoteldelClass = new Order_Hotel();
		hoteldelClass.setId((String) session.get("session_id"));
		sqlMapper.delete("deleteHorder",hoteldelClass);

		//투어
		tourdelClass = new Order_Tour();
		tourdelClass.setId((String) session.get("session_id"));
		sqlMapper.delete("deleteTorder",tourdelClass);
		
	    //항공
		airdelClass = new Order_Air();
		airdelClass.setId((String) session.get("session_id"));
		sqlMapper.delete("deleteAorder",airdelClass);
	    
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

	public Order_Hotel getHoteldelClass() {
		return hoteldelClass;
	}

	public void setHoteldelClass(Order_Hotel hoteldelClass) {
		this.hoteldelClass = hoteldelClass;
	}

	public Order_Hotel getHoteldelRClass() {
		return hoteldelRClass;
	}

	public void setHoteldelRClass(Order_Hotel hoteldelRClass) {
		this.hoteldelRClass = hoteldelRClass;
	}

	public Order_Tour getTourdelClass() {
		return tourdelClass;
	}

	public void setTourdelClass(Order_Tour tourdelClass) {
		this.tourdelClass = tourdelClass;
	}

	public Order_Tour getTourdelRClass() {
		return tourdelRClass;
	}

	public void setTourdelRClass(Order_Tour tourdelRClass) {
		this.tourdelRClass = tourdelRClass;
	}

	public Order_Air getAirdelClass() {
		return airdelClass;
	}

	public void setAirdelClass(Order_Air airdelClass) {
		this.airdelClass = airdelClass;
	}

	public Order_Air getAirdelRClass() {
		return airdelRClass;
	}

	public void setAirdelRClass(Order_Air airdelRClass) {
		this.airdelRClass = airdelRClass;
	}

	
	

}
