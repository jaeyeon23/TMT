package admin.notice;

import java.io.IOException;
import java.io.Reader;
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
	
	private NoticeVO paramClass;
	private NoticeVO resultClass;
	
	private int currentPage;
	
	private int notice_no;
	
	public AdminNoticeView() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	
	}
	@Override
	public String execute() throws Exception {
		
		resultClass = (NoticeVO)sqlMapper.queryForObject("noticeView",getNotice_no());
		
		
		return SUCCESS;
	}
	public NoticeVO getParamClass() {
		return paramClass;
	}
	public void setParamClass(NoticeVO paramClass) {
		this.paramClass = paramClass;
	}
	public NoticeVO getResultClass() {
		return resultClass;
	}
	public void setResultClass(NoticeVO resultClass) {
		this.resultClass = resultClass;
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
	
	
}
