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

import order.Order_Air;
import order.Order_Hotel;
import order.Order_Tour;

public class AdminOrderDelete extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private int currentPage = 1;
	private String c;
	private int seq_no;
	private int no;
	private int people;
	private int room;
	private int amount;
	private Order_Hotel order_Hotel = new Order_Hotel();
	private Order_Tour order_Tour = new Order_Tour();
	private Order_Air order_Air = new Order_Air();
	
	public AdminOrderDelete() throws IOException{
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		String cc;
		if(getC().equals("h")) {
			cc = "orderHDelete";
			order_Hotel.setRoom(getRoom());
			order_Hotel.setNo(getNo());
			sqlMapper.update("HHH",order_Hotel);
		}
		else if(getC().equals("a")) {
			cc = "orderADelete";
			order_Air.setPeople(getPeople());
			order_Air.setNo(getNo());
			sqlMapper.update("AAA",order_Air);
		}
		else {
			cc = "orderTDelete";
			order_Tour.setAmount(getAmount());
			order_Tour.setNo(getNo());
			sqlMapper.update("TTT",order_Tour);
		}
		sqlMapper.delete(cc,getSeq_no());
		
		
		return SUCCESS;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Order_Hotel getOrder_Hotel() {
		return order_Hotel;
	}

	public void setOrder_Hotel(Order_Hotel order_Hotel) {
		this.order_Hotel = order_Hotel;
	}

	public Order_Tour getOrder_Tour() {
		return order_Tour;
	}

	public void setOrder_Tour(Order_Tour order_Tour) {
		this.order_Tour = order_Tour;
	}

	public Order_Air getOrder_Air() {
		return order_Air;
	}

	public void setOrder_Air(Order_Air order_Air) {
		this.order_Air = order_Air;
	}

}
