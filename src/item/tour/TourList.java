package item.tour;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import java.util.Date;
import java.util.HashMap;


import com.opensymphony.xwork2.ActionSupport;

import item.hotel.HotelVO;
import item.hotel.HotelpagingAction;
import item.tour.*;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient; 
import com.ibatis.sqlmap.client.SqlMapClientBuilder;


import item.tour.TourpagingAction;
import org.apache.struts2.interceptor.SessionAware;
public class TourList extends ActionSupport implements SessionAware{

	
	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private List<TourVO> Tourlist = new ArrayList<TourVO>();
	private Map session;
	
	private int currentPage = 1;	//현재 페이지
	private int totalCount; 		// 총 게시물의 수
	private int blockCount = 2;	// 한 페이지의  게시물의 수
	private int blockPage = 5; 	// 한 화면에 보여줄 페이지 수
	private String pagingHtml; 	//페이징을 구현한 HTML
	private TourpagingAction page; // 페이징 클래스
	
	private String tourname;
	private TourVO tvo = new TourVO();
	
	private int num = 0;
	private Map map = new HashMap<>();

	// 생성자
	public TourList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}

	// 게시판 LIST 액션
	public String execute() throws Exception {
		
		if (getTourname() != null) {
			return search2();
		}
	    // 모든글을 가져와 list에 넣는다
		Tourlist = sqlMapper.queryForList("selectAllT");
		
		totalCount = Tourlist.size(); // 전체글 개수를 구한다.

		// TourpagingAction ü .
		page = new TourpagingAction(currentPage, totalCount, blockCount, blockPage, "",getNum());
		pagingHtml = page.getPagingHtml().toString();

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;
		// lastCount�� +1 번호로 설정
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다..
		Tourlist = Tourlist.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	
	public String search2() throws Exception{
		if(num ==1) {
			map.put("tourname", getTourname());
			Tourlist = sqlMapper.queryForList("Search_TourR", map);
		}else if(num ==2) {
			map.put("tourname", getTourname());
			Tourlist = sqlMapper.queryForList("Search_TourP", map);
		}else {
		// 검색 내용에따른 글을 list를 넣는다
		map.put("tourname", getTourname());
		Tourlist = sqlMapper.queryForList("Search_Tour", map);
		}
		
		totalCount = Tourlist.size(); // 전체 글의 개수

		// HotelpagingAction 객체생성
		page = new TourpagingAction(currentPage, totalCount, blockCount, blockPage, tourname,getNum());
		pagingHtml = page.getPagingHtml().toString();

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;
		// lastCount�� +1 번호로 설정
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		Tourlist = Tourlist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	
	public List<TourVO> getTourlist() {
		return Tourlist;
	}

	public void setTourlist(List<TourVO> tourlist) {
		Tourlist = tourlist;
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

	public TourpagingAction getPage() {
		return page;
	}
	public void setPage(TourpagingAction page) {
		this.page = page;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
	// 검색
	public String getTourname() {
		return tourname;
	}

	public void setTourname(String tourname) {
		this.tourname = tourname;
	}
	public TourVO getTvo() {
		return tvo;
	}
	public void setTvo(TourVO tvo) {
		this.tvo = tvo;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

}

















