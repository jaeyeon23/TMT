package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;


public class AdminAirWrite extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	private Map session;
	
	private AirVO paramClass; 
	private AirVO resultClass; 
	
	private int currentPage;
	private int no;
	private String arv;	
	private String dep;	
	private int price;	
	private String content;	
	private String image1;	
	private int seat;		
	private int seat_grade;	
	private String ad;		
	private String dd;	
	private String ad_time;
	private String dd_time;
	private String air_company;		
	private int grade;		
	
	
	private File upload ;
	private String uploadFileName; 
	private String uploadContentType ;
	private String fileUploadPath = "C:\\Users\\박재연\\Desktop\\TMT\\TMT\\WebContent\\upload\\air\\"; 
	

	
	public AdminAirWrite() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}
	public String form() throws Exception {
		return SUCCESS;

	}
public String execute() throws Exception {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		ad = getAd()+" "+getAd_time();
		dd = getDd()+" "+getDd_time();
		
		paramClass = new AirVO();
		paramClass.setArv(getArv());
		paramClass.setPrice(getPrice());
		paramClass.setDep(getDep());
		paramClass.setContent(getContent());
		paramClass.setSeat(getSeat());
		paramClass.setSeat_grade(getSeat_grade());
		paramClass.setAd(transFormat.parse(ad));
		paramClass.setDd(transFormat.parse(dd));
		paramClass.setAir_company(getAir_company());
		paramClass.setGrade(0);
		paramClass.setImage1(getUploadFileName());
		
		
			File destFile = new File(fileUploadPath + getUploadFileName());
			FileUtils.copyFile(getUpload(), destFile);
				
		
		sqlMapper.insert("insertAir",paramClass);
		
		return SUCCESS;
		
	}
public Map getSession() {
	return session;
}

public void setSession(Map session) {
	this.session = session;
}

public AirVO getParamClass() {
	return paramClass;
}
public void setParamClass(AirVO paramClass) {
	this.paramClass = paramClass;
}
public AirVO getResultClass() {
	return resultClass;
}
public void setResultClass(AirVO resultClass) {
	this.resultClass = resultClass;
}
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getArv() {
	return arv;
}
public void setArv(String arv) {
	this.arv = arv;
}
public String getDep() {
	return dep;
}
public void setDep(String dep) {
	this.dep = dep;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getImage1() {
	return image1;
}
public void setImage1(String image1) {
	this.image1 = image1;
}
public int getSeat() {
	return seat;
}
public void setSeat(int seat) {
	this.seat = seat;
}
public int getSeat_grade() {
	return seat_grade;
}
public void setSeat_grade(int seat_grade) {
	this.seat_grade = seat_grade;
}

public String getAir_company() {
	return air_company;
}
public void setAir_company(String air_company) {
	this.air_company = air_company;
}
public int getGrade() {
	return grade;
}
public void setGrade(int grade) {
	this.grade = grade;
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
public int getCurrentPage() {
	return currentPage;
}
public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
}
public String getAd() {
	return ad;
}
public void setAd(String ad) {
	this.ad = ad;
}
public String getDd() {
	return dd;
}
public void setDd(String dd) {
	this.dd = dd;
}
public String getAd_time() {
	return ad_time;
}
public void setAd_time(String ad_time) {
	this.ad_time = ad_time;
}
public String getDd_time() {
	return dd_time;
}
public void setDd_time(String dd_time) {
	this.dd_time = dd_time;
}


}
