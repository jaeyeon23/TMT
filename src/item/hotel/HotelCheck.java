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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class HotelCheck extends ActionSupport implements SessionAware {

	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private HotelVO hvo = new HotelVO();
	
	private String hotelname ;  //검색키워드
	private String number;     //인원수
	private String inDay, outDay;  //체크인 체크아웃
	private String roomnum;       //방개수
	private int no;
	private String name;
	private List<HotelVO> Hotellist = new ArrayList<HotelVO>();
	
	
	private Map map = new HashMap<>();
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
		
		/*map.put("no", getNo());
		map.put("roomnum", getRoomnum());


		sqlMapper.update("roomHotel", map);*/
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
		public int getNo() {
			return no;
		}
		public void setNo(int no) {
			this.no = no;
		}
	//숙소,지역,,,
		public String getHotelname() {
			return hotelname;
		}
		public void setHotelname(String hotelname) {
			this.hotelname = hotelname;
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
		
		public HotelVO getHvo() {
			return hvo;
		}
		public void setHvo(HotelVO hvo) {
			this.hvo = hvo;
		}
		public String getRoomnum() {
			return roomnum;
		}
		public void setRoomnum(String roomnum) {
			this.roomnum = roomnum;
		}

		@Override
		public void setSession(Map arg0) {
			// TODO Auto-generated method stub
			
		}
	
}
