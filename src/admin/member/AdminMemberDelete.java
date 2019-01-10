package admin.member;

import java.io.File;
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

import member.MemberVO;
import member.Member_imageVO;
import order.Order_Tour;

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
	private List t = new ArrayList();
	private List h = new ArrayList();
	private List a = new ArrayList();
	int[] hc;
	int[] tc;
	
	private String fileUploadPath = "C:\\Users\\박재연\\Desktop\\TMT\\TMT\\WebContent\\upload\\hotel\\"; 
	private Member_imageVO image = new Member_imageVO();
	
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
		image = (Member_imageVO)sqlMapper.queryForObject("member_image_select",map);
		
		if(sqlMapper.queryForList("hotelCOne",map).size()!=0) {
			map.put("hc",sqlMapper.queryForList("hotelCOne",map));
			sqlMapper.delete("deleteMemberCH",map);
		}
		if(sqlMapper.queryForList("tourCOne",map).size()!=0) {
			map.put("tc",sqlMapper.queryForList("tourCOne",map));
			sqlMapper.delete("deleteMemberCT",map);
		}

		
		List a = sqlMapper.queryForList("AA",map);
		List t = sqlMapper.queryForList("TT",map);
		List h = sqlMapper.queryForList("HH",map);
		for(int i=0;i<a.size();i++) {
			sqlMapper.update("AAA",a.get(i));
		}
		for(int i=0;i<t.size();i++) {
			sqlMapper.update("TTT",t.get(i));
		}
		for(int i=0;i<h.size();i++) {
			sqlMapper.update("HHH",h.get(i));
		}
		
		File deleteFile = new File(fileUploadPath + image.getMem_image());
		deleteFile.delete();
		
		sqlMapper.delete("deleteImage",map);
		
		sqlMapper.delete("deleteMemberH",map);
		sqlMapper.delete("deleteMemberT",map);
		sqlMapper.delete("deleteMemberA",map);
		sqlMapper.delete("deleteMemberBH",map);
		sqlMapper.delete("deleteMemberBT",map);
		sqlMapper.delete("deleteMember", p);
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
