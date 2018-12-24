package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.hotel.HotelVO;

public class AdminHotelWrite extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	
	private HotelVO paramClass; 
	private HotelVO resultClass;
	

	private int no;            
	private String name;      
	private int price;       
	private String content;  
	private String country;	
	private String region;	
	private String image1; 
	private String image2;  
	private String image3;
	private String tel;       
	private String checkin;  
	private String checkout;
	private int maxnum; 
	private int grade;
	
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath = "C:\\Java\\App\\TMT\\WebContent\\upload\\hotel\\"; 
	
	
	public AdminHotelWrite() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}
	public String form() throws Exception {
		return SUCCESS;

	}
	
	public String execute() throws Exception {
		
		
		
		
		paramClass = new HotelVO();
		paramClass.setName(getName());
		paramClass.setPrice(getPrice());
		paramClass.setCheckin(getCheckin());
		paramClass.setContent(getContent());
		paramClass.setCountry(getCountry());
		paramClass.setRegion(getRegion());
		paramClass.setTel(getTel());
		paramClass.setCheckout(getCheckout());
		paramClass.setMaxnum(getMaxnum());
		paramClass.setGrade(0);
		paramClass.setImage1(getUploadsFileName().get(0));
		paramClass.setImage2(getUploadsFileName().get(1));
		paramClass.setImage3(getUploadsFileName().get(2));
		for(int i=0;i<uploads.size();i++) {
			File destFile = new File(fileUploadPath + getUploadsFileName().get(i));
			FileUtils.copyFile(getUploads().get(i), destFile);
				
		}
		sqlMapper.insert("insertHotel",paramClass);
		
		return SUCCESS;
		
	}
	
	
	
	public HotelVO getParamClass() {
		return paramClass;
	}
	public void setParamClass(HotelVO paramClass) {
		this.paramClass = paramClass;
	}
	public HotelVO getResultClass() {
		return resultClass;
	}
	public void setResultClass(HotelVO resultClass) {
		this.resultClass = resultClass;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public int getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	public String getFileUploadPath() {
		return fileUploadPath;
	}
	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}
	public List<File> getUploads() {
		return uploads;
	}
	public void setUploads(List<File> uploads) {
		this.uploads = uploads;
	}
	public List<String> getUploadsFileName() {
		return uploadsFileName;
	}
	public void setUploadsFileName(List<String> uploadsFileName) {
		this.uploadsFileName = uploadsFileName;
	}
	public List<String> getUploadsContentType() {
		return uploadsContentType;
	}
	public void setUploadsContentType(List<String> uploadsContentType) {
		this.uploadsContentType = uploadsContentType;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	
	
}
