package admin.item;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourComVO;
import item.tour.TourVO;

public class AdminTourView extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private TourVO paramClass;
	private TourVO resultClass;
	private String path = "/TMT/upload/tour/";

	private List<String> imageList = new ArrayList<String>();
	
	private int currentPage;
	
	private int no;
	
	/*댓글*/
	private TourComVO cParam;
	private TourComVO cResult;
	private List<TourComVO> cList = new ArrayList<TourComVO>();
	private int currentPageC;
	private int c_no;
	
	public AdminTourView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new TourVO();
		
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		
		cList = sqlMapper.queryForList("tourCList",getNo());
		
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
	public TourComVO getcParam() {
		return cParam;
	}
	public void setcParam(TourComVO cParam) {
		this.cParam = cParam;
	}
	public TourComVO getcResult() {
		return cResult;
	}
	public void setcResult(TourComVO cResult) {
		this.cResult = cResult;
	}
	public List<TourComVO> getcList() {
		return cList;
	}
	public void setcList(List<TourComVO> cList) {
		this.cList = cList;
	}
	public int getCurrentPageC() {
		return currentPageC;
	}
	public void setCurrentPageC(int currentPageC) {
		this.currentPageC = currentPageC;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	
}
