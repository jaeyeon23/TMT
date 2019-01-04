package admin.member;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import member.MemberVO;

public class AdminMemberModify extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private MemberVO paramClass;
	private MemberVO resultClass;

	private MemberVO mvo = new MemberVO();

	private int no;
	private String name;
	private String password;
	private String newpassword;
	private String email;
	private int tel;
	private String marketing1;
	private String marketing2;
	private String image1;


	public AdminMemberModify() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();

	}

	public String form()throws Exception{
		return SUCCESS;
	}
	
	@Override
	public String execute() throws Exception {
		
		paramClass = new MemberVO();
		resultClass = new MemberVO();
		
		paramClass.setName(getName());
		paramClass.setEmail(getEmail());
		paramClass.setTel(getTel());
		paramClass.setPassword(getPassword());
		paramClass.setMarketing1(getMarketing1());
		paramClass.setMarketing2(getMarketing2());
		
		sqlMapper.update("ModifyMember", paramClass);
		
		
		
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



	public MemberVO getMvo() {
		return mvo;
	}



	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
	}



	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getNewpassword() {
		return newpassword;
	}



	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
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



	public String getMarketing1() {
		return marketing1;
	}



	public void setMarketing1(String marketing1) {
		this.marketing1 = marketing1;
	}



	public String getMarketing2() {
		return marketing2;
	}



	public void setMarketing2(String marketing2) {
		this.marketing2 = marketing2;
	}



	public String getImage1() {
		return image1;
	}



	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	
}
