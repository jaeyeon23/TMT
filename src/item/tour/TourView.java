package item.tour;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;


import item.tour.TourVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.io.IOException;

public class TourView extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private TourVO paramClass;
	private TourVO resultClass;
	private String path = "/TMT/upload/tour/";

	private List<String> imageList = new ArrayList<String>();
	
	private int currentPage;
	
	private int no;
	
	private Map session;
	
	public TourView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new TourVO();
		
		sqlMapper.update("readHitTour", getNo());
		
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		
		if(resultClass.getImage2()!=null) {
			String[] image  = resultClass.getImage2().split(",");
			
			for(String a : image)
				imageList.add(path+a);
		}
		
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


	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List<String> getImageList() {
		return imageList;
	}
	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
	}
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}
	

}
