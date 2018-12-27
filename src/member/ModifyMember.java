package member;

import java.io.Reader;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import java.io.File;
import java.io.IOException;
import org.apache.commons.io.FileUtils;
import com.ibatis.common.resources.*;

public class ModifyMember extends ActionSupport{
	
	private Reader reader;
	private SqlMapClient sqlMapper;
	
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


	public ModifyMember() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();

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



	
	
	

}
