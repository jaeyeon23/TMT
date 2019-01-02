package admin.item;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;


import item.air.AirVO;

public class AdminAirView extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private AirVO paramClass;
	private AirVO resultClass;
	private String path = "/TMT/upload/air/";

	private List<String> imageList = new ArrayList<String>();
	
	private int currentPage;
	
	private int no;
	
	
	
	public AdminAirView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new AirVO();
		/*상세보기*/
		resultClass = (AirVO)sqlMapper.queryForObject("airView",getNo());
		
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
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public List<String> getImageList() {
		return imageList;
	}
	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
	}
	
}
