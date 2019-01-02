package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class HotelSuccess extends ActionSupport implements SessionAware {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private String roomnum;       //방개수
	private List<HotelVO> Hotellist = new ArrayList<HotelVO>();
	
	private Map map = new HashMap<>();
	private Map session;
	
	
	private String id;
	private int seq_no;            //상품번호
	private String name;      //상품명   
	private int price;       //가격
	private String country;	 //국가
	private String region;	//지역
	private String image1;  
	private String checkin;    //체크인
	private String checkout;   //체크아웃
	private int room; 
	private int type;
	
	
	public HotelSuccess() throws IOException {
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		
		map.put("seq_no", getSeq_no());
		map.put("name", getName());
		map.put("price", getPrice());
		map.put("country", getCountry());
		map.put("region", getRegion());
		map.put("image1", getImage1());
		map.put("checkin", getCheckin());
		map.put("checkout", getCheckout());
		map.put("id", getId());
		map.put("type", getType());
		map.put("roomnum", getRoomnum());
		
		sqlMapper.update("roomHotel", map);
		sqlMapper.insert("putorder_H", map);
		return SUCCESS;
	}
	
	public List<HotelVO> getHotellist() {
		return Hotellist;
	}

	public void setHotellist(List<HotelVO> hotellist) {
		Hotellist = hotellist;
	}
	
	//상품명
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
	//상품번호
		public int getSeq_no() {
			return seq_no;
		}
		public void setSeq_no(int seq_no) {
			this.seq_no = seq_no;
		}
		
		public int getType() {
			return type;
		}
		public void setType(int type) {
			this.type = type;
		}

		public String getRoomnum() {
			return roomnum;
		}
		public void setRoomnum(String roomnum) {
			this.roomnum = roomnum;
		}


		public Map getSession() {
			return session;
		}

		public void setSession(Map session) {
			this.session = session;
		}
		
		
		
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		//가격
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		
		//국가
		public String getCountry() {
			return country;
		}
		public void setCountry(String country) {
			this.country = country;
		}
		
		//지역
		public String getRegion() {
			return region;
		}
		public void setRegion(String region) {
			this.region = region;
		}
		
		
		//̹이미지1~3
		
		public String getImage1() {
			return image1;
		}
		public void setImage1(String image1) {
			this.image1 = image1;
		}
	
		
		//체크인
		public String getCheckin() {
			return checkin;
		}
		public void setCheckin(String checkin) {
			this.checkin = checkin;
		}
		
		//체크아웃
		public String getCheckout() {
			return checkout;
		}
		public void setCheckout(String checkout) {
			this.checkout = checkout;
		}
		
		//객실수
		public int getRoom() {
			return room;
		}

		public void setRoom(int room) {
			this.room = room;
		}

}
