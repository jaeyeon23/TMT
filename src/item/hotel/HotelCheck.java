package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class HotelCheck extends ActionSupport implements SessionAware {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private String number;     //인원수
	private String inDay, outDay;  //체크인 체크아웃
	private int roomnum;       //방개수
	
	private int no;            //상품번호
	private String name;      //상품명   
	private int price;       //가격
	private String content;  //내용
	private String image1; 
	private String country;	 //국가
	private String region;	//지역
	private String tel;       //전화번호

	
	private Map session;
	
	public HotelCheck() throws IOException {
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

		//인원수
		public String getNumber() {
			return number;
		}
		public void setNumber(String number) {
			this.number = number;
		}
		//체크인,아웃
		public String getInDay() {
			return inDay;
		}
		public void setInDay(String inDay) {
			this.inDay = inDay;
		}
		public String getOutDay() {
			return outDay;
		}
		public void setOutDay(String outDay) {
			this.outDay = outDay;
		}
		public int getRoomnum() {
			return roomnum;
		}
		public void setRoomnum(int roomnum) {
			this.roomnum = roomnum;
		}

		public Map getSession() {
		      return session;
		}
		public void setSession(Map session) {
		      this.session = session;
		}
		
		//상품번호
		public int getNo() {
			return no;
		}
		public void setNo(int no) {
			this.no = no;
		}
		
		//상품명
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		
		//가격
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		
		//내용
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
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
		
		//전화번호
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		
	
}
