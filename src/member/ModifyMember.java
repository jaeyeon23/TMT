package member;

import java.io.Reader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.common.resources.*;
import com.opensymphony.xwork2.ActionSupport;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

public class ModifyMember extends ActionSupport implements SessionAware{
	
	private static Reader reader;
	private static SqlMapClient sqlMapper;
	
	private MemberVO paramClass;
	private MemberVO resultClass;
	
	private int no;
	private String id;
	private String name;
	private String password;
	private String passport;
	private String email;
	private String tel;
	private String marketing1;
	private String marketing2;
	private String image1;
	
	private Map session;
	private Map imageClass = new HashMap<>();;

	/*test*/
	private File upload ;
	private String uploadFileName; 
	private String uploadContentType ;
	private String fileUploadPath = "C:\\Java\\App\\TMT\\WebContent\\upload\\mem_image\\"; 
	/*text end*/
	
	private StringBuffer image;
	
	public ModifyMember() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();

	}

	public String execute() throws Exception{
		paramClass = new MemberVO();
		
		paramClass.setId((String) session.get("session_id"));
		resultClass = (MemberVO) sqlMapper.queryForObject("selectOne",paramClass);		
		
		return SUCCESS;
	}

	public String Update() throws Exception {
		paramClass = new MemberVO();
		resultClass = new MemberVO();
		
		paramClass.setId((String)session.get("session_id"));
		paramClass.setName(getName());
		paramClass.setEmail(getEmail());
		paramClass.setTel(getTel());
		paramClass.setPassword(getPassword());
		paramClass.setPassport(getPassport());
		paramClass.setMarketing1(getMarketing1());
		sqlMapper.update("ModifyMember", paramClass);
				
		
		System.out.println("test : " + getUploadFileName());
		
		/*test start*/
		if(upload != null) {
			imageClass.put("mem_image", getUploadFileName());
			imageClass.put("id", (String)session.get("session_id"));
			
			
			File destFile = new File(fileUploadPath + getUploadFileName());
			FileUtils.copyFile(getUpload(), destFile);
			
			sqlMapper.insert("member_image_insert", imageClass);
		}
		/*test end*/
		
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
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

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public StringBuffer getImage() {
		return image;
	}

	public void setImage(StringBuffer image) {
		this.image = image;
	}

	public Map getImageClass() {
		return imageClass;
	}

	public void setImageClass(Map imageClass) {
		this.imageClass = imageClass;
	}
}
