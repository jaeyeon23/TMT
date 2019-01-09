package member;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ServiceMember extends ActionSupport implements SessionAware{
	
	private static Reader reader;
	private static SqlMapClient sqlMapper;
	private Map session;
	
	private String id;
	private String password;
	private String image1;
	private String name;
	private String email;
	private int tel;
	private String passport;
	private String marketing1;
	private String marketing2;
	
	private MemberVO paramClass= new MemberVO();
	private MemberVO resultClass = new MemberVO();
	private Member_imageVO resultImage = new Member_imageVO();
	
	private Map imageClass = new HashMap<>();
	
	public ServiceMember() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	@Override
	public String execute() throws Exception {
		
		paramClass.setId((String) session.get("session_id"));
		resultClass = (MemberVO) sqlMapper.queryForObject("selectOne",paramClass);		
		
		imageClass.put("id", (String)session.get("session_id"));
		resultImage = (Member_imageVO)sqlMapper.queryForObject("member_image_select", imageClass);
			
		return SUCCESS;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
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
	
	public Map getSession() {
	      return session;
	   }

	public void setSession(Map session) {
	     this.session = session;
   	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
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
