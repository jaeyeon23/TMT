package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

public class AdminTourModify extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	private Map session;
	
	private TourVO paramClass; 
	private TourVO resultClass;
	
	private int no;          
	private int currentPage;
	
	private String name;        
	private int price;       

	private String country;	
	private String region;	
	private String main_image; 
	private String content_image;  

	private int amount;
	
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
		resultClass = new TourVO();
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		return SUCCESS;

	}
	public String execute() throws Exception {
		resultClass = new TourVO();
		
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		
		resultClass.setName(getName());
		resultClass.setPrice(getPrice());

		resultClass.setCountry(getCountry());
		resultClass.setRegion(getRegion());
		resultClass.setAmount(getAmount());
		
		
		
		
		if(uploads !=null) {
			image = new StringBuffer();
			if(resultClass.getMain_image()!=null)
				old_image.add(resultClass.getMain_image());
			if(resultClass.getContent_image()!=null) {
				old_content = resultClass.getContent_image().split(",");
				for(int i=0;i<old_content.length;i++)
					old_image.add(old_content[i]);
			}
			for(int i=0;i<old_image.size();i++) {
				
				File deleteFile = new File(fileUploadPath + old_image.get(i));
				deleteFile.delete();
			}
			for(int i=0;i<uploads.size();i++) {
				
				if(i==0) {
					resultClass.setMain_image(getUploadsFileName().get(i));
				}
				else if(i!=uploads.size()-1)
					image.append(getUploadsFileName().get(i)).append(",");
				else
					image.append(getUploadsFileName().get(i));
				
				File destFile = new File(fileUploadPath + getUploadsFileName().get(i));
				FileUtils.copyFile(getUploads().get(i), destFile);
					
			}
			
			resultClass.setContent_image(image.toString());
			
		}
		sqlMapper.update("updateTour",resultClass);
		
		uri ="?no="+getNo()+"&currentPage="+getCurrentPage();
		return SUCCESS;
		
	}
	
	
	
	
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
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
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	
}
