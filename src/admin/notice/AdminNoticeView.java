package admin.notice;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;

public class AdminNoticeView extends ActionSupport implements SessionAware  {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private Map notice = new HashMap();
	
	private int currentPage;
	
	private int notice_no;
	
	public AdminNoticeView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		
		notice.put("now", (NoticeVO)sqlMapper.queryForObject("noticeView",getNotice_no()));
		notice.put("next", (NoticeVO)sqlMapper.queryForObject("noticeNext",getNotice_no()));
		notice.put("prev", (NoticeVO)sqlMapper.queryForObject("noticePrev",getNotice_no()));
		
		return SUCCESS;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public Map getNotice() {
		return notice;
	}
	public void setNotice(Map notice) {
		this.notice = notice;
	}
	
	
}
