package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class HotelView extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	private HotelVO paramClass;
	private HotelVO resultClass;
	private String path = "/TMT/upload/hotel/";

	private List<String> imageList = new ArrayList<String>();
	
	private int currentPage;
	
	private int no;
	
	/*댓글*/
	private HotelComVO cParam;
	private HotelComVO cResult;
	private List<HotelComVO> cList = new ArrayList<HotelComVO>();
	
	private int c_no;
	private Map page = new HashMap();
	private int currentPageC = 1;
	private int totalCount;
	private int blockCount=4;
	private int blockPage = 5;
	private String pagingHtml;
	private HotelComPaging cPage;
	
	public HotelView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		paramClass = new HotelVO();
		/*상세보기*/
		sqlMapper.update("readHitHotel",getNo());
		resultClass = (HotelVO)sqlMapper.queryForObject("selectOneH",getNo());
		
		if(resultClass.getContent_image()!=null) {
			String[] image  = resultClass.getContent_image().split(",");
			
			for(String a : image)
				imageList.add(path+a);//상세보기
		}
		/*댓글*/
		totalCount = (Integer)sqlMapper.queryForObject("hotelCCount",getNo());
		cPage = new HotelComPaging(getNo(),getCurrentPage(),currentPageC, totalCount, blockCount, blockPage);
		pagingHtml = cPage.getPagingHtml().toString();
		
		page.put("hotel_no", getNo());
		page.put("r1", cPage.getStartCount());
		page.put("r2", cPage.getEndCount());
		
		cList = sqlMapper.queryForList("hotelCList",page);//댓끝
		
		
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
	public List<HotelComVO> getcList() {
		return cList;
	}
	public HotelComVO getcParam() {
		return cParam;
	}
	public void setcParam(HotelComVO cParam) {
		this.cParam = cParam;
	}
	public HotelComVO getcResult() {
		return cResult;
	}
	public void setcResult(HotelComVO cResult) {
		this.cResult = cResult;
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
	public HotelComPaging getcPage() {
		return cPage;
	}
	public void setcPage(HotelComPaging cPage) {
		this.cPage = cPage;
	}
	public void setcList(List<HotelComVO> cList) {
		this.cList = cList;
	}
	public int getCurrentPageC() {
		return currentPageC;
	}
	public void setCurrentPageC(int currentPageC) {
		this.currentPageC = currentPageC;
	}
	public String getPagingHtml() {
		return pagingHtml;
	}
	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}
	public Map getSession() {
	      return session;
	   }

	public void setSession(Map session) {
	      this.session = session;
	   }
}
