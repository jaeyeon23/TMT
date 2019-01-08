package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

public class AdminTourWrite extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	private Map session;
	
	private TourVO paramClass; 
	private TourVO resultClass;
	
	private int no;            
	private String name;        
	private int price;       
	private String content; 
	private String country;	
	private String region;	
	private String main_image; 
	private String content_image;  
	private String image3;  
	private Date reg_date;   
	private int grade;	
	private int amount;
	
	private StringBuffer image;
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath = "C:\\인영\\java\\TMT\\WebContent\\upload\\tour\\";
			// "C:\\Java\\App\\TMT\\WebContent\\upload\\tour\\"; 
	
	public AdminTourWrite() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}
	public String form() throws Exception {
		return SUCCESS;

	}
	
	public String execute() throws Exception {
		paramClass = new TourVO();
		paramClass.setName(getName());
		paramClass.setPrice(getPrice());
		paramClass.setContent(getContent());
		paramClass.setCountry(getCountry());
		paramClass.setRegion(getRegion());
		paramClass.setGrade(0);
		paramClass.setAmount(getAmount());
		
		if(uploads !=null) {
			image = new StringBuffer();
			for(int i=0;i<uploads.size();i++) {
				if(i==0) {
					paramClass.setMain_image(getUploadsFileName().get(i));
				}
				else if(i!=uploads.size()-1)
					image.append(getUploadsFileName().get(i)).append(",");
				else
					image.append(getUploadsFileName().get(i));
				
				File destFile = new File(fileUploadPath + getUploadsFileName().get(i));
				FileUtils.copyFile(getUploads().get(i), destFile);
					
			}
			
			paramClass.setContent_image(image.toString());
			
		}
		sqlMapper.insert("insertTour",paramClass);
		
		return SUCCESS;
		
	}
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public TourVO getParamClass() {
		return paramClass;
	}
	public void setParamClass(TourVO paramClass) {
		this.paramClass = paramClass;
	}
	public TourVO getResultClass() {
		return resultClass;
	}
	public void setResultClass(TourVO resultClass) {
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
	
	public String getMain_image() {
		return main_image;
	}
	public void setMain_image(String main_image) {
		this.main_image = main_image;
	}
	public String getContent_image() {
		return content_image;
	}
	public void setContent_image(String content_image) {
		this.content_image = content_image;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
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
	public String getFileUploadPath() {
		return fileUploadPath;
	}
	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public Map getSession() {
		return session;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}

	
}
