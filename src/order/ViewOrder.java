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

import basket.BasketHVO;



public class ViewOrder extends ActionSupport implements SessionAware {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	private Order_Hotel hotelClass;
	private List<Order_Hotel> hotelRClass = new ArrayList<Order_Hotel>();
	
	private Order_Tour tourClass;
	private List<Order_Tour> tourRClass = new ArrayList<Order_Tour>();;
	
	private Order_Air airClass;
	private List<Order_Air> airRClass = new ArrayList<Order_Air>();
	
	   
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
		hotelClass = new Order_Hotel();
		hotelClass.setId((String) session.get("session_id"));
		
		hotelRClass = sqlMapper.queryForList("selectH_view",hotelClass);
		
		//투어
		tourClass = new Order_Tour();
		tourClass.setId((String) session.get("session_id"));
		
		tourRClass = sqlMapper.queryForList("selectT_view",tourClass);
		//항공
		airClass = new Order_Air();
		airClass.setId((String) session.get("session_id"));
		
		airRClass = sqlMapper.queryForList("selectA_view",airClass);
		
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


	public Order_Hotel getHotelClass() {
		return hotelClass;
	}


	public void setHotelClass(Order_Hotel hotelClass) {
		this.hotelClass = hotelClass;
	}


	public List<Order_Hotel> getHotelRClass() {
		return hotelRClass;
	}


	public void setHotelRClass(List<Order_Hotel> hotelRClass) {
		this.hotelRClass = hotelRClass;
	}


	public Order_Tour getTourClass() {
		return tourClass;
	}


	public void setTourClass(Order_Tour tourClass) {
		this.tourClass = tourClass;
	}


	public List<Order_Tour> getTourRClass() {
		return tourRClass;
	}


	public void setTourRClass(List<Order_Tour> tourRClass) {
		this.tourRClass = tourRClass;
	}


	public Order_Air getAirClass() {
		return airClass;
	}


	public void setAirClass(Order_Air airClass) {
		this.airClass = airClass;
	}


	public List<Order_Air> getAirRClass() {
		return airRClass;
	}


	public void setAirRClass(List<Order_Air> airRClass) {
		this.airRClass = airRClass;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	
	
	
	
	
}
