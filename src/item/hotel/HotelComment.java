package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class HotelComment extends ActionSupport implements SessionAware
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private HotelComVO cParam;
	private HotelComVO cResult;
	private Map session;
	private int currentPage;
	private int currentPageC;
	
	private int c_no;
	private int hotel_no;
	private String c_id;
	private String c_content;
	private String c_grade;
	private int c_ref;
	private int c_re_step;
	private int c_re_level;
	private String uri;	
	
	public HotelComment()throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	public String execute()throws Exception{
		cParam = new HotelComVO();
	
		cParam.setC_id(getC_id());
		cParam.setC_content(getC_content());
		cParam.setHotel_no(getHotel_no());
		
		if(getC_ref() == 0) {
			cParam.setC_re_level(0);
			cParam.setC_re_step(0);
			sqlMapper.insert("insertHotelC",cParam);
		}
		else {
			cParam.setC_ref(getC_ref());
			cParam.setC_re_step(getC_re_step());
			sqlMapper.update("replyStepHC",cParam);
			cParam.setC_re_step(getC_re_step()+1);
			cParam.setC_re_level(getC_re_level()+1);
			sqlMapper.insert("insertHotelCR",cParam);
		}
		
		
		setUri("?no="+getHotel_no()+"&currentPage="+getCurrentPage());
		return SUCCESS;
	}



	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCurrentPageC() {
		return currentPageC;
	}

	public void setCurrentPageC(int currentPageC) {
		this.currentPageC = currentPageC;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getHotel_no() {
		return hotel_no;
	}

	public void setHotel_no(int hotel_no) {
		this.hotel_no = hotel_no;
	}

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_grade() {
		return c_grade;
	}

	public void setC_grade(String c_grade) {
		this.c_grade = c_grade;
	}

	public int getC_ref() {
		return c_ref;
	}

	public void setC_ref(int c_ref) {
		this.c_ref = c_ref;
	}

	public int getC_re_step() {
		return c_re_step;
	}
	public void setC_re_step(int c_re_step) {
		this.c_re_step = c_re_step;
	}
	public int getC_re_level() {
		return c_re_level;
	}
	public void setC_re_level(int c_re_level) {
		this.c_re_level = c_re_level;
	}
	public Map getSession() {
	      return session;
	   }

	public void setSession(Map session) {
	      this.session = session;
	   }
}
