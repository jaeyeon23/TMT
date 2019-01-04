package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class HotelComDelete extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private int no;
	private int currentPage;
	private int c_ref;
	private String param;
	
	public HotelComDelete()throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	public String execute()throws Exception{
		sqlMapper.delete("deleteHotelCOne",getC_ref());
		param = "?no="+getNo()+"&currentPage="+getCurrentPage();
		return SUCCESS;
	}



	
	public String getParam() {
		return param;
	}
	public void setParam(String param) {
		this.param = param;
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
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getC_ref() {
		return c_ref;
	}
	public void setC_ref(int c_ref) {
		this.c_ref = c_ref;
	}
	
}
