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
	
	private Map map = new HashMap<>();
	private Map session;
	private String id;
	
	private int no;            //상품번호
	private String name;      //상품명   
	private int price;       //가격
	private String content;  //내용
	private String image1; 
	private String country;	 //국가
	private String region;	//지역
	private String tel;       //전화번호
	private String checkin;    //체크인
	private String checkout;   //체크아웃
	private int maxnum; 	//인원수
	private int room; 
	
	Date date = new Date();
	
	public HotelSuccess() throws IOException {
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		
		map.put("no", getNo());
		map.put("name", getName());
		map.put("price", getPrice());
		map.put("content", getContent());
		map.put("country", getCountry());
		map.put("region", getRegion());
		map.put("tel", getTel());
		map.put("image1", getImage1());
		map.put("checkin", getCheckin());
		map.put("checkout", getCheckout());
		map.put("id", getId());
		map.put("maxnum", getMaxnum());
		map.put("room", getRoom());
		map.put("reg_date", date);
		
		sqlMapper.update("roomHotel", map);
		sqlMapper.insert("putorder_H", map);
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

	// 상품번호
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	// 상품명
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	// 가격
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	// 내용
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	// 국가
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	// 지역
	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	// ̹이미지1~3
	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	// 전화번호
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	// 체크인
	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	// 체크아웃
	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	// 인원수
	public int getMaxnum() {
		return maxnum;
	}

	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}

	// 객실수
	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

}
