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
	private String name;
	private String password;
	private String email;
	private int tel;
	private int admin;
	private Date regdate;
	
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
	
	public String Form() throws Exception {
		return SUCCESS;
	}
		
	public String Login() throws Exception {
		
		paramClass = new MemberVO();

		paramClass.setId(getId());
		paramClass.setPassword(getPassword());

		resultClass = (MemberVO) sqlMapper.queryForObject("loginChk", getId());
		
		if(resultClass != null){

			resultClass = (MemberVO) sqlMapper.queryForObject("selectOne",paramClass);

	        session.put("session_id", resultClass.getId());
	        session.put("session_admin",resultClass.getAdmin());
	        session.put("session_name", resultClass.getName());
			return SUCCESS;
		}

	    return ERROR;

	}
	
	//로그아웃
	 public String logout() throws Exception {
		if(session.get("session_id")!=null) {
			session.remove("session_id");
			session.remove("session_name");
			session.remove("session_admin");
		}
		return SUCCESS;
	}

	 

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getTel() {
		return tel;
	}
	
	public void setTel(int tel) {
		this.tel = tel;
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
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
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