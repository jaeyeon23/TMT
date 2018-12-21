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


	private int no;
	private String id;
	private String password;
	private String password2;
	private String passport;
	private String name;
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
/*	public String execute() throws Exception {
		return SUCCESS;
	}
	*/
	public String Form() throws Exception {
		return SUCCESS;
	}
		
	public String execute() throws Exception {
		
		paramClass = new MemberVO();

		paramClass.setId(getId());
		paramClass.setPassword(getPassword());
		
		resultClass = (MemberVO) sqlMapper.queryForObject("selectOne", getId());

	    if (resultClass != null) { // 아이디가 있으면 
	      if (resultClass.getPassword().equals(getPassword())) { // 비밀번호 일치
	        
	    	  // 로그인 성공 . 세션 설정
	        session.put("id", resultClass.getId());
	        session.put("password", resultClass.getPassword());
	        session.put("admin", resultClass.getAdmin());
	        
	        System.out.println(session.get("admin"));
	        System.out.println(session.get("id"));
	        
	        return SUCCESS;
	      }
	    }
	    return ERROR;
		
		//return SUCCESS;
	}
	
	//로그아웃
	 public String logout() throws Exception {
			
			if (session.get("id") != null) {
				session.remove("id");
				session.remove("password");
				session.remove("admin");				
			}
			
			return SUCCESS;
		}
		
	public void setSession(Map arg0) {
		// TODO Auto-generated method stub
		
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
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	public Map getSession() {
		return session;
	}
	
	

	
}