package admin.item;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

public class AdminTourView extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private TourVO paramClass;
	private TourVO resultClass;
	
	private int currentPage;
	
	private int no;
	
	public AdminTourView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new TourVO();
		paramClass.setNo(getNo());
		
		
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		
		
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
	
}
