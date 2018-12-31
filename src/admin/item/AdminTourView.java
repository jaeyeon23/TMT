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
	
	private int c_no;
	private Map page = new HashMap();
	private int currentPageC = 1;
	private int totalCount;
	private int blockCount=3;
	private int blockPage = 5;
	private String pagingHtml;
	private TourComPaging cPage;
	
	public AdminTourView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new TourVO();
		/*상세보기*/
		resultClass = (TourVO)sqlMapper.queryForObject("selectOneT",getNo());
		
		if(resultClass.getImage2()!=null) {
			String[] image  = resultClass.getImage2().split(",");
			
			for(String a : image)
				imageList.add(path+a);//상세보기
		}
		/*댓글*/
		totalCount = (Integer)sqlMapper.queryForObject("tourCCount",getNo());
		cPage = new TourComPaging(getNo(),getCurrentPage(),currentPageC, totalCount, blockCount, blockPage);
		pagingHtml = cPage.getPagingHtml().toString();
		
		page.put("tour_no", getNo());
		page.put("r1", cPage.getStartCount());
		page.put("r2", cPage.getEndCount());
		
		cList = sqlMapper.queryForList("tourCList",page);//댓끝
		
		
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
	public Map getPage() {
		return page;
	}
	public void setPage(Map page) {
		this.page = page;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getBlockCount() {
		return blockCount;
	}
	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}
	public int getBlockPage() {
		return blockPage;
	}
	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}
	public String getPagingHtml() {
		return pagingHtml;
	}
	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}
	public TourComPaging getcPage() {
		return cPage;
	}
	public void setcPage(TourComPaging cPage) {
		this.cPage = cPage;
	}
}
