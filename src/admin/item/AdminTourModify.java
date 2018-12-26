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

public class AdminTourModify extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	
	private TourVO paramClass; 
	private TourVO resultClass;
	
	private int no;          
	private int currentPage;
	
	private String name;        
	private int price;       
	private String content; 
	private String country;	
	private String region;	
	private String image1; 
	private String image2;  
	private String image3;  
	
	private StringBuffer image;
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath = "C:\\Java\\App\\TMT\\WebContent\\upload\\tour\\"; 
	
	private List<String> old_image = new ArrayList<String>();
	private String[] old_content;
	
	private String uri;
	
	public AdminTourModify() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}
	
	public String form() throws Exception {
		return SUCCESS;

	}
	public String execute() throws Exception {
		resultClass = new TourVO();
		
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		
		resultClass.setName(getName());
		resultClass.setPrice(getPrice());
		resultClass.setContent(getContent());
		resultClass.setCountry(getCountry());
		resultClass.setRegion(getRegion());
		
		
		
		
		if(uploads !=null) {
			image = new StringBuffer();
			if(resultClass.getImage1()!=null)
				old_image.add(resultClass.getImage1());
			if(resultClass.getImage2()!=null) {
				old_content = resultClass.getImage2().split(",");
				for(int i=0;i<old_content.length;i++)
					old_image.add(old_content[i]);
			}
			for(int i=0;i<old_image.size();i++) {
				
				File deleteFile = new File(fileUploadPath + old_image.get(i));
				deleteFile.delete();
			}
			for(int i=0;i<uploads.size();i++) {
				
				if(i==0) {
					resultClass.setImage1(getUploadsFileName().get(i));
				}
				else if(i!=uploads.size()-1)
					image.append(getUploadsFileName().get(i)).append(",");
				else
					image.append(getUploadsFileName().get(i));
				
				File destFile = new File(fileUploadPath + getUploadsFileName().get(i));
				FileUtils.copyFile(getUploads().get(i), destFile);
				
				System.out.println(destFile.toString());
					
			}
			
			resultClass.setImage2(image.toString());
			
		}
		sqlMapper.update("updateTour",resultClass);
		
		uri ="?no="+getNo()+"&currentPage="+getCurrentPage();
		return SUCCESS;
		
	}
	
	
	
	
	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
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

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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
	
	
}
