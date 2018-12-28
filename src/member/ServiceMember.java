package member;

import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ActionSupport;

public class ServiceMember extends ActionSupport implements SessionAware{
	
	private Reader reader;
	private SqlMapClient sqlMapper;

	private MemberVO mvo = new MemberVO();

	private String id;
	private String password;
	private String password2;

	private String name;
	private String email;
	private String email2;
	private int tel;
	
	private Map session;
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String modifyMember() throws Exception {
		mvo.setId(id);

		if(password2 != null || password2 != ""){
			mvo.setPassword(password);
		}
		
		/*email=email+"@"+email2;*/
		mvo.setEmail(email);
		mvo.setTel(tel);

		
		sqlMapper.update("updateMember", mvo);
	
		return SUCCESS;
	}

	public Reader getReader() {
		return reader;
	}

	public void setReader(Reader reader) {
		this.reader = reader;
	}

	public SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public MemberVO getMvo() {
		return mvo;
	}

	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
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

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
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
	
	
}
