package order;

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

import member.Member_imageVO;

public class OrderList extends ActionSupport implements SessionAware {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private Map imageClass = new HashMap<>();
	private Member_imageVO resultImage = new Member_imageVO();
	

	private List<Order_Hotel> ohlist = new ArrayList<Order_Hotel>();
	private Order_Hotel hvo = new Order_Hotel();

	private List<Order_Tour> otlist = new ArrayList<Order_Tour>();
	private Order_Tour tvo = new Order_Tour();

	private List<Order_Air> oalist = new ArrayList<Order_Air>();
	private Order_Air avo = new Order_Air();

	private String id;
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 3;
	private int blockPage = 5;
	private String pagingHtml;
	private OrderpagingAction page;

	private int currentPage2 = 1;
	private int totalCount2;
	private int blockCount2 = 3;
	private int blockPage2 = 5;
	private String pagingHtml2;
	private OrderpagingAction2 page2;

	private int currentPage3 = 1;
	private int totalCount3;
	private int blockCount3 = 4;
	private int blockPage3 = 5;
	private String pagingHtml3;
	private OrderpagingAction3 page3;

	public OrderList() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml �뙆�씪�쓽 �꽕�젙�궡�슜�쓣 媛��졇�삩�떎.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�쓽 �궡�슜�쓣 �쟻�슜�븳 sqlMapper 媛앹껜
																	// �깮�꽦.
		reader.close();
	}

	@Override
	public String execute() throws Exception {
		if(currentPage == 0) {
			currentPage = 1;
		}
		
		if(currentPage2 == 0) {
			currentPage2 = 1;
		}
		
		if(currentPage3 == 0) {
			currentPage3 = 1;
		}
		
		// 호텔
		hvo.setId((String) session.get("session_id"));
		ohlist = sqlMapper.queryForList("select_Horder", hvo);

		totalCount = ohlist.size();
		page = new OrderpagingAction(currentPage, currentPage2, currentPage3, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		ohlist = ohlist.subList(page.getStartCount(), lastCount);
		
		// 투어
		tvo.setId((String) session.get("session_id"));
		otlist = sqlMapper.queryForList("select_Torder", tvo);

		totalCount2 = otlist.size();
		page2 = new OrderpagingAction2(currentPage, currentPage2, currentPage3, totalCount2, blockCount2, blockPage2);
		pagingHtml2 = page2.getPagingHtml2().toString();

		int lastCount2 = totalCount2;

		if (page2.getEndCount2() < totalCount2)
			lastCount2 = page2.getEndCount2() + 1;

		otlist = otlist.subList(page2.getStartCount2(), lastCount2);
		
		// 항공
		avo.setId((String) session.get("session_id"));
		oalist = sqlMapper.queryForList("select_Aorder", avo);

		totalCount3 = oalist.size();
		page3 = new OrderpagingAction3(currentPage, currentPage2, currentPage3, totalCount3, blockCount3, blockPage3);
		pagingHtml3 = page3.getPagingHtml3().toString();

		int lastCount3 = totalCount3;

		if (page3.getEndCount3() < totalCount3)
			lastCount3 = page3.getEndCount3() + 1;

		oalist = oalist.subList(page3.getStartCount3(), lastCount3);
		
		imageClass.put("id", (String)session.get("session_id"));
		resultImage = (Member_imageVO)sqlMapper.queryForObject("member_image_select", imageClass);
		

		return SUCCESS;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public List<Order_Hotel> getOhlist() {
		return ohlist;
	}

	public void setOhlist(List<Order_Hotel> ohlist) {
		this.ohlist = ohlist;
	}

	public Order_Hotel getHvo() {
		return hvo;
	}

	public void setHvo(Order_Hotel hvo) {
		this.hvo = hvo;
	}

	public List<Order_Tour> getOtlist() {
		return otlist;
	}

	public void setOtlist(List<Order_Tour> otlist) {
		this.otlist = otlist;
	}

	public Order_Tour getTvo() {
		return tvo;
	}

	public void setTvo(Order_Tour tvo) {
		this.tvo = tvo;
	}

	public List<Order_Air> getOalist() {
		return oalist;
	}

	public void setOalist(List<Order_Air> oalist) {
		this.oalist = oalist;
	}

	public Order_Air getAvo() {
		return avo;
	}

	public void setAvo(Order_Air avo) {
		this.avo = avo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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

	public OrderpagingAction getPage() {
		return page;
	}

	public void setPage(OrderpagingAction page) {
		this.page = page;
	}

	public int getCurrentPage2() {
		return currentPage2;
	}

	public void setCurrentPage2(int currentPage2) {
		this.currentPage2 = currentPage2;
	}

	public int getTotalCount2() {
		return totalCount2;
	}

	public void setTotalCount2(int totalCount2) {
		this.totalCount2 = totalCount2;
	}

	public int getBlockCount2() {
		return blockCount2;
	}

	public void setBlockCount2(int blockCount2) {
		this.blockCount2 = blockCount2;
	}

	public int getBlockPage2() {
		return blockPage2;
	}

	public void setBlockPage2(int blockPage2) {
		this.blockPage2 = blockPage2;
	}

	public String getPagingHtml2() {
		return pagingHtml2;
	}

	public void setPagingHtml2(String pagingHtml2) {
		this.pagingHtml2 = pagingHtml2;
	}

	public OrderpagingAction2 getPage2() {
		return page2;
	}

	public void setPage2(OrderpagingAction2 page2) {
		this.page2 = page2;
	}

	public int getCurrentPage3() {
		return currentPage3;
	}

	public void setCurrentPage3(int currentPage3) {
		this.currentPage3 = currentPage3;
	}

	public int getTotalCount3() {
		return totalCount3;
	}

	public void setTotalCount3(int totalCount3) {
		this.totalCount3 = totalCount3;
	}

	public int getBlockCount3() {
		return blockCount3;
	}

	public void setBlockCount3(int blockCount3) {
		this.blockCount3 = blockCount3;
	}

	public int getBlockPage3() {
		return blockPage3;
	}

	public void setBlockPage3(int blockPage3) {
		this.blockPage3 = blockPage3;
	}

	public String getPagingHtml3() {
		return pagingHtml3;
	}

	public void setPagingHtml3(String pagingHtml3) {
		this.pagingHtml3 = pagingHtml3;
	}

	public OrderpagingAction3 getPage3() {
		return page3;
	}

	public void setPage3(OrderpagingAction3 page3) {
		this.page3 = page3;
	}
	
	public Member_imageVO getResultImage() {
		return resultImage;
	}
	public void setResultImage(Member_imageVO resultImage) {
		this.resultImage = resultImage;
	}
	public Map getImageClass() {
		return imageClass;
	}
	public void setImageClass(Map imageClass) {
		this.imageClass = imageClass;
	}

}