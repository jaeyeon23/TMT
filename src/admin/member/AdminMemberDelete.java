package admin.member;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import member.MemberVO;

public class AdminMemberDelete extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private String id;
	private int currentPage = 1;
	private String search;
	private String[] searchh;
	private StringBuffer sb = new StringBuffer();
	private String param;
	private MemberVO p = new MemberVO();
	
	public AdminMemberDelete() throws IOException{
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	public String execute() throws Exception {
		p.setId(getId());
		sb.append("?currentPage=").append(getCurrentPage());
		if(getSearch() !=null && !(getSearch().equals(""))) {
			sb.append("&search=").append(getSearch());
			for(String s:searchh)
				sb.append("&searchh=").append(s);
		}
		Map map = new HashMap();
		String idd = p.getId();
		
		map.put("id",idd);
		
		int tmp1 = (Integer)sqlMapper.queryForObject("hotelCOne",map);
		int tmp2 = (Integer)sqlMapper.queryForObject("tourCOne",map);
		
		map.put("refH",tmp1);
		map.put("refT",tmp2);
		sqlMapper.delete("deleteMember", p);
		sqlMapper.delete("deleteMemberH",map);
		sqlMapper.delete("deleteMemberT",map);
		sqlMapper.delete("deleteMemberA",map);
		sqlMapper.delete("deleteMemberBH",map);
		sqlMapper.delete("deleteMemberBT",map);
		sqlMapper.delete("deleteMemberCH",map);
		sqlMapper.delete("deleteMemberCT",map);
		param = sb.toString();
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
