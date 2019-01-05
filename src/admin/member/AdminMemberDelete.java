package admin.member;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AdminMemberDelete extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private int currentPage = 1;
	private String search;
	private String[] searchh;
	private StringBuffer sb = new StringBuffer();
	private String param;
	
	public AdminMemberDelete() throws IOException{
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	public String execute() throws Exception {
		sb.append("?currentPage=").append(getCurrentPage());
		if(getSearch() !=null && !(getSearch().equals(""))) {
			sb.append("&search=").append(getSearch());
			for(String s:searchh)
				sb.append("&searchh=").append(s);
		}
		
		
		param = sb.toString();
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

public String getSearch() {
	return search;
}

public void setSearch(String search) {
	this.search = search;
}

public String[] getSearchh() {
	return searchh;
}

public void setSearchh(String[] searchh) {
	this.searchh = searchh;
}

public String getParam() {
	return param;
}

public void setParam(String param) {
	this.param = param;
}



}
