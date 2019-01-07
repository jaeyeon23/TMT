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

public class OrderView extends ActionSupport implements SessionAware {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private Map session;
	private Order_Hotel hotelClass;
	private Order_Hotel oh;
	
	private Order_Tour tourClass;
	private Order_Tour ot;
	
	private Order_Air airClass;
	private Order_Air oa;
	
	private String id;
	private int seq_no;
	private String type;

	public OrderView() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
																	
		reader.close();
	}

	@Override
	public String execute() throws Exception {
		if(type.equals("0")) {
			hotelClass = new Order_Hotel();
			hotelClass.setId(id);
			hotelClass.setSeq_no(seq_no);
			
			oh = (Order_Hotel) sqlMapper.queryForObject("order_hotel_view", hotelClass);
			
			oh.setCheckin(oh.getCheckin().substring(0, 10));
			oh.setCheckout(oh.getCheckout().substring(0, 10));
		}
		
		if(type.equals("1")) {
			tourClass = new Order_Tour();
			tourClass.setId(id);
			tourClass.setSeq_no(seq_no);
			
			ot = (Order_Tour) sqlMapper.queryForObject("order_tour_view", tourClass);
		}
		
		if(type.equals("2")) {
			airClass = new Order_Air();
			airClass.setId(id);
			airClass.setSeq_no(seq_no);

			oa = (Order_Air) sqlMapper.queryForObject("order_air_view", airClass);
		}
		
		return SUCCESS;
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

	public Order_Tour getTourClass() {
		return tourClass;
	}

	public void setTourClass(Order_Tour tourClass) {
		this.tourClass = tourClass;
	}

	public Order_Air getAirClass() {
		return airClass;
	}

	public void setAirClass(Order_Air airClass) {
		this.airClass = airClass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}

	public Order_Hotel getOh() {
		return oh;
	}

	public void setOh(Order_Hotel oh) {
		this.oh = oh;
	}

	public Order_Tour getOt() {
		return ot;
	}

	public void setOt(Order_Tour ot) {
		this.ot = ot;
	}

	public Order_Air getOa() {
		return oa;
	}

	public void setOa(Order_Air oa) {
		this.oa = oa;
	}

}
