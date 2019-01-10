package order;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;
import item.hotel.HotelVO;
import item.tour.TourVO;

public class DeleteOrder extends ActionSupport implements SessionAware {

	private static Reader reader;
	private static SqlMapClient sqlMapper;
	private Map session;

	private Order_Hotel order_Hotel = new Order_Hotel();
	private Order_Tour order_Tour = new Order_Tour();
	private Order_Air order_Air = new Order_Air();

	private AirVO air = new AirVO();
	private TourVO tour = new TourVO();
	private HotelVO hotel = new HotelVO();
	
	private String id;
	private int no;

	private String del;
	private String[] rownum;

	private String arr_no;
	private String[] item_no;
	
	/*투어 amount*/
	private String arr_amount;
	private String[] tour_amount;
	
	/*호텔 방 개수 room*/
	private String arr_room;
	private String[] hotel_room;
	
	/*항공*/
	private String arr_seat;
	private String[] air_seat;
	
	private String type;

	public DeleteOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);

		reader.close();
	}

	@Override
	public String execute() throws Exception {
		if(del == null) {
			return SUCCESS;
		}
		
		rownum = del.split(", ");
		item_no = arr_no.split(", ");
		
		if (type.equals("0")) {
			order_Hotel.setId(getId());
			hotel_room = arr_room.split(", ");
			
			for (int i = 0; i < rownum.length; i++) {
				order_Hotel.setSeq_no(Integer.parseInt(rownum[i]));
				hotel.setNo(Integer.parseInt(item_no[i]));
				hotel.setRoom(Integer.parseInt(hotel_room[i]));
				
				sqlMapper.delete("deleteHorder", order_Hotel);
				sqlMapper.update("update_Hotel_Order", hotel);
			}
		}
		
		if (type.equals("1")) {
			order_Tour.setId(getId());
			tour_amount = arr_amount.split(", ");

			for (int i = 0; i < rownum.length; i++) {
				order_Tour.setSeq_no(Integer.parseInt(rownum[i]));
				tour.setNo(Integer.parseInt(item_no[i]));
				tour.setAmount(Integer.parseInt(tour_amount[i]));
				
				sqlMapper.delete("deleteTorder", order_Tour);
				sqlMapper.update("update_Tour_Order", tour);
			}
		}
		
		if (type.equals("2")) {
			order_Air.setId(getId());
			air_seat = arr_seat.split(", ");
			
			for (int i = 0; i < rownum.length; i++) {
				order_Air.setSeq_no(Integer.parseInt(rownum[i]));
				air.setNo(Integer.parseInt(item_no[i]));
				air.setSeat(Integer.parseInt(air_seat[i]));
				
				sqlMapper.delete("deleteAorder", order_Air);
				sqlMapper.update("update_Air_Order", air);
			}
		}

		return SUCCESS;
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

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getArr_no() {
		return arr_no;
	}

	public void setArr_no(String arr_no) {
		this.arr_no = arr_no;
	}

	public String getArr_seat() {
		return arr_seat;
	}

	public void setArr_seat(String arr_seat) {
		this.arr_seat = arr_seat;
	}

	public String getArr_amount() {
		return arr_amount;
	}

	public void setArr_amount(String arr_amount) {
		this.arr_amount = arr_amount;
	}

	public String getArr_room() {
		return arr_room;
	}

	public void setArr_room(String arr_room) {
		this.arr_room = arr_room;
	}

}
