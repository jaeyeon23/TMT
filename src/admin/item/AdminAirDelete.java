package admin.item;

import java.io.File;
import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;


public class AdminAirDelete extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper; 
	
	private AirVO paramClass; 
	private AirVO resultClass;
	
	private int no;           
	private int currentPage;	
	
	private String fileUploadPath = "C:\\Users\\박재연\\Desktop\\TMT\\TMT\\WebContent\\upload\\air\\"; 
	
	private String uri;
	
	
	public AdminAirDelete() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 

		reader.close();
	}
	public String execute() throws Exception {
		resultClass = new AirVO();
		
		resultClass = (AirVO)sqlMapper.queryForObject("airOne",getNo());
		sqlMapper.delete("deleteAir",getNo());
	
		uri = "?currnetPage="+getCurrentPage();
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
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	
}
