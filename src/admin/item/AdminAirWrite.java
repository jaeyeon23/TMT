package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.Date;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;


public class AdminAirWrite extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	
	private AirVO paramClass; 
	private AirVO resultClass; 
	
	private int no;
	private String arv;	
	private String dep;	
	private int price;	
	private String content;	
	private String image1;	
	private int seat;		
	private int seat_grade;	
	private Date ad;		
	private Date dd;		
	private Date ad_time;		
	private Date dd_time;		
	private String air_company;		
	private int grade;		
	
	
	private File upload ;
	private String uploadsFileName; 
	private String uploadsContentType ;
	private String fileUploadPath = "C:\\Java\\App\\TMT\\WebContent\\upload\\hotel\\"; 
	
	public AdminAirWrite() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}
	public String form() throws Exception {
		return SUCCESS;

	}
public String execute() throws Exception {
		paramClass = new AirVO();
		paramClass.setArv(getArv());
		paramClass.setPrice(getPrice());
		paramClass.setDep(getDep());
		paramClass.setContent(getContent());
		paramClass.setSeat(getSeat());
		paramClass.setSeat_grade(getSeat_grade());
		paramClass.setAd(getAd());
		paramClass.setDd(getDd());
		paramClass.setGrade(0);
		paramClass.setImage1(getUploadsFileName());
		
		
			File destFile = new File(fileUploadPath + getUploadsFileName());
			FileUtils.copyFile(getUpload(), destFile);
				
		
		sqlMapper.insert("insertAir",paramClass);
		
		return SUCCESS;
		
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
public Date getAd() {
	return ad;
}
public void setAd(Date ad) {
	this.ad = ad;
}
public Date getDd() {
	return dd;
}
public void setDd(Date dd) {
	this.dd = dd;
}
public Date getAd_time() {
	return ad_time;
}
public void setAd_time(Date ad_time) {
	this.ad_time = ad_time;
}
public Date getDd_time() {
	return dd_time;
}
public void setDd_time(Date dd_time) {
	this.dd_time = dd_time;
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
public String getUploadsFileName() {
	return uploadsFileName;
}
public void setUploadsFileName(String uploadsFileName) {
	this.uploadsFileName = uploadsFileName;
}
public String getUploadsContentType() {
	return uploadsContentType;
}
public void setUploadsContentType(String uploadsContentType) {
	this.uploadsContentType = uploadsContentType;
}
public String getFileUploadPath() {
	return fileUploadPath;
}
public void setFileUploadPath(String fileUploadPath) {
	this.fileUploadPath = fileUploadPath;
}
	
	
}
