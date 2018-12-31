package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class HotelView extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private HotelVO paramClass;
	private HotelVO resultClass;
	private String path = "/TMT/upload/hotel/";

	private List<String> imageList = new ArrayList<String>();
	
	private int currentPage;
	
	private int no;
	private Map session;
	
	public HotelView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new HotelVO();
		
		sqlMapper.update("readHitHotel", getNo());
		
		resultClass = (HotelVO)sqlMapper.queryForObject("selectOneH",getNo());
		
		if(resultClass.getContent_image()!=null) {
			String[] image  = resultClass.getContent_image().split(",");
			
			for(String a : image)
				imageList.add(path+a);
		}
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
	public List<String> getImageList() {
		return imageList;
	}
	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
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
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}
	
	
}
