package admin.member;

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

import member.MemberVO;

public class AdminMemberList extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=1;
	private int blockPage = 5;
	private String pagingHtml;
	private MemberPaging page;
	
	private List<MemberVO> list = new ArrayList<MemberVO>();
	
	/*검색*/
	private String search;
	private String[] searchh;
	private Map searchch = new HashMap();;
	
	public AdminMemberList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		if(getSearch()!=null) {
			for(String a : searchh) {
				if(a.equals("id"))
					searchch.put("id", a);
				if(a.equals("name"))
					searchch.put("name", a);
				if(a.equals("email"))
					searchch.put("email", a);
				if(a.equals("passport"))
					searchch.put("passport", a);
			}
			searchch.put("search", search);
			list = sqlMapper.queryForList("searchMember",searchch);
		}
		else {
			list = sqlMapper.queryForList("memberList");
		}
		totalCount = list.size(); 
		page = new MemberPaging(currentPage, totalCount, blockCount, blockPage , getSearch(),getSearchh());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) 
			lastCount = page.getEndCount()+1; 

		list = list.subList(page.getStartCount(), lastCount);

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

	public MemberPaging getPage() {
		return page;
	}

	public void setPage(MemberPaging page) {
		this.page = page;
	}

	public List<MemberVO> getList() {
		return list;
	}

	public void setList(List<MemberVO> list) {
		this.list = list;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String[] getSearchh() {
		return searchh;
	}

	public void setSearchh(String[] searchh) {
		this.searchh = searchh;
	}
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	
}
