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
import member.Member_imageVO;

public class AdminMemberView extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private MemberVO paramClass;
	private MemberVO resultClass;
	private Member_imageVO resultImage = new Member_imageVO();
	
	private int currentPage;
	
	private String id;
	
	private Map imageClass = new HashMap<>();;
	
	public AdminMemberView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	public String execute() throws Exception {
		paramClass = new MemberVO();
		paramClass.setId(getId());
		resultClass = (MemberVO)sqlMapper.queryForObject("selectOne",paramClass);
	
		imageClass.put("id", id);
		
		resultImage = (Member_imageVO)sqlMapper.queryForObject("member_image_select", imageClass);
		
		return SUCCESS;
	}
	
	public MemberVO getParamClass() {
		return paramClass;
	}
	public void setParamClass(MemberVO paramClass) {
		this.paramClass = paramClass;
	}
	public MemberVO getResultClass() {
		return resultClass;
	}
	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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
public Member_imageVO getResultImage() {
	return resultImage;
}
public void setResultImage(Member_imageVO resultImage) {
	this.resultImage = resultImage;
}
public Map getImageClass() {
	return imageClass;
}
public void setImageClass(Map imageClass) {
	this.imageClass = imageClass;
}

}
