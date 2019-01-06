package member;

import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import member.MemberVO;

public class LoginMember extends ActionSupport implements SessionAware{

	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private MemberVO resultClass;
	private MemberVO paramClass;

	private String id;
	private String password;
	private int admin;
	private Date regdate;
	private String url;
	private String url2;
	
	private Map session;
	
	Calendar today = Calendar.getInstance();
	
	public LoginMember() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	public String execute() throws Exception {
		return SUCCESS;
	}
		
	public String Login() throws Exception {
		url = getUrl();
		StringBuffer sb = new StringBuffer();
		resultClass = (MemberVO) sqlMapper.queryForObject("loginChk", getId());
		
		if(resultClass != null){
			
			if(resultClass.getPassword().equals(getPassword())) {
			sb.append(url.substring(url.lastIndexOf("/")+1, url.lastIndexOf(".")));
			if(url.lastIndexOf("?")!= -1)
				sb.append(url.substring(url.lastIndexOf("?")));
			url2 = sb.toString();
			System.out.println(url2);
			
	        session.put("session_id", resultClass.getId());
	        session.put("session_admin",resultClass.getAdmin());
			return SUCCESS;
			}			
		}

	    return ERROR;
	}
	
	//로그아웃
	 public String logout() throws Exception {
		 
		if(session.get("session_id")!=null) {
			session.remove("session_id");
			session.remove("session_admin");
		}
		return SUCCESS;
	}

	 
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUrl2() {
		return url2;
	}
	public void setUrl2(String url2) {
		this.url2 = url2;
	}
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Map getSession() {
		return session;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}
	
	public MemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}

	public MemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(MemberVO paramClass) {
		this.paramClass = paramClass;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		LoginMember.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		LoginMember.sqlMapper = sqlMapper;
	}	
	

	
}