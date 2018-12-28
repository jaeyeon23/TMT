package member;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ServiceMember extends ActionSupport{
	
	private Reader reader;
	private SqlMapClient sqlMapper;

	private MemberVO mvo = new MemberVO();

	private String id;
	private String password;
	private String password2;

	private String name;
	private String email;
	private int tel;
	private String marketing1;
	private String marketing2;
	
	private MemberVO paramClass= new MemberVO();
	private MemberVO resultClass = new MemberVO();
	
	public ServiceMember() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	
  
	@Override
	public String execute() throws Exception {
		mvo.setId(id);
		resultClass = (MemberVO) sqlMapper.queryForObject("selectOne",mvo);		
		
		
		
		
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
	
	
	
	
}
