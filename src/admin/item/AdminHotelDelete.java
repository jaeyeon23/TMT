package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.hotel.HotelVO;

public class AdminHotelDelete extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	
	private HotelVO paramClass; 
	private HotelVO resultClass;
	
	private int no;           
	private int currentPage;	
	
	private String fileUploadPath = "C:\\Users\\박재연\\Desktop\\TMT\\TMT\\WebContent\\upload\\hotel\\"; 
	
	private List<String> old_image = new ArrayList<String>();
	private String[] old_content;
	
	private String uri;
	
	public AdminHotelDelete() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}

	@Override
	public String execute() throws Exception {
		resultClass = new HotelVO();
		
		resultClass = (HotelVO)sqlMapper.queryForObject("selectOneH",getNo());
		
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
		
		uri = "?currnetPage="+getCurrentPage();
		sqlMapper.delete("deleteHotelC",getNo());
		sqlMapper.delete("deleteHotel",getNo());
		
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

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}
		
}
