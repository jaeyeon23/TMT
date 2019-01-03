package admin.notice;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;
public class AdminNoticeList extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=9;
	private int blockPage = 5;
	private String pagingHtml;
	private PagingAction page;
	
	private List<NoticeVO> list = new ArrayList<NoticeVO>();
	private Map session;
	
	public AdminNoticeList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		list = sqlMapper.queryForList("noticeList");
		
		totalCount = list.size(); // list객체의 크기- totalCount
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) // 마지막 페이지가 전체 수보다 작으면
			lastCount = page.getEndCount()+1; // +1 하기.
		// 여기까지가 페이징하기	
//		System.out.println("토탈: "+totalCount);
		list = list.subList(page.getStartCount(), lastCount);
		// list객체에 첫줄부터 끝줄까지 담아온다.
//		System.out.println("리스트: "+list);
		
		
		return SUCCESS;
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

	public PagingAction getPage() {
		return page;
	}

	public void setPage(PagingAction page) {
		this.page = page;
	}

	public List<NoticeVO> getList() {
		return list;
	}

	public void setList(List<NoticeVO> list) {
		this.list = list;
	}
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	
}
