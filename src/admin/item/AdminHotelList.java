package admin.item;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.hotel.HotelVO;

public class AdminHotelList extends ActionSupport implements SessionAware{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private List<HotelVO> Hotellist = new ArrayList<HotelVO>();
	private HotelVO hvo = new HotelVO();
	
	private String hotelname;  //검색키워드
	private String number;     //인원수
	private String inDay, outDay;  //체크인 체크아웃
	private String roomnum;       //방개수
	
	private int num = 0;           //검색구분을위한 변수 0= 검색x 1 = 지역검색, 2:인기순 ,3 =가격순 ,4= 별점순 

	private int currentPage = 1;	//현재 페이지
	private int totalCount; 		// 총 게시물의 수
	private int blockCount = 5;	// 한 페이지의  게시물의 수
	private int blockPage = 5; 	// 한 화면에 보여줄 페이지 수
	private String pagingHtml; 	//페이징을 구현한 HTML
	private HotelPagingAction page; 	// 페이징 클래스


	private Map map = new HashMap<>();

	private Map session;


	// 생성자
	public AdminHotelList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}

	//게시판 LIST 액션
	public String execute() throws Exception {
		
		if(getHotelname() != null) {
			return search();
		}
		// 모든글을 가져와 list에 넣는다
		Hotellist = sqlMapper.queryForList("selectAllH");

		totalCount = Hotellist.size(); // 전체글 개수를 구한다.

		// HotelpagingAction 객체생성
		page = new HotelPagingAction(currentPage, totalCount, blockCount, blockPage, "");
		pagingHtml = page.getPagingHtml().toString();

		//현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;
		// lastCount�� +1 번호로 설정
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		Hotellist = Hotellist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	public String search() throws Exception{
		
		map.put("hotelname", getHotelname());
		map.put("inDay", getInDay());
		map.put("outDay", getOutDay());
		map.put("number", getNumber());
		map.put("roomnum", getRoomnum());
		
		if(num == 1) {
			hvo.setRegion(getHotelname());
			Hotellist = sqlMapper.queryForList("selectAllHH", hvo);
		}else if(num == 2) {
			Hotellist = sqlMapper.queryForList("Search_Hotel_read", map);
		}else if(num == 3) {
			Hotellist = sqlMapper.queryForList("Search_Hotel_price", map);
		}else if(num == 4) {
			Hotellist = sqlMapper.queryForList("Search_Hotel_date", map);
		}else{
			Hotellist = sqlMapper.queryForList("Search_Hotel",  map);		
		}
		
		
		
		totalCount = Hotellist.size(); // 전체 글의 개수

		// HotelpagingAction 객체생성
		page = new HotelPagingAction(currentPage, totalCount, blockCount, blockPage, getHotelname());
		pagingHtml = page.getPagingHtml().toString();

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;
		// lastCount�� +1 번호로 설정
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		Hotellist = Hotellist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	public List<HotelVO> getHotellist() {
		return Hotellist;
	}

	public void setHotellist(List<HotelVO> hotellist) {
		Hotellist = hotellist;
	}

	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}
	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}
	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}
	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public HotelPagingAction getPage() {
		return page;
	}
	public void setPage(HotelPagingAction page) {
		this.page = page;
	}
	
	/*검색 */
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
}
	