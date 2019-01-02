package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

public class AdminTourWrite extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	
	private TourVO paramClass; 
	private TourVO resultClass;
	
	private int no;            
	private String name;        
	private int price;       
	private String content; 
	private String country;	
	private String region;	
	private String image1; 
	private String image2;  
	private String image3;  
	private Date reg_date;   
	private int grade;	
	
	private StringBuffer image;
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath = "C:\\Java\\App\\TMT\\WebContent\\upload\\tour\\"; 
	
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
				
				System.out.println(destFile.toString());
					
			}
			
			paramClass.setContent_image(image.toString());
			
		}
		sqlMapper.insert("insertTour",paramClass);
		
		return SUCCESS;
		
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
	
	
}
