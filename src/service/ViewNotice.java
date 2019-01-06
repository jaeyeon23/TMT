package service;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ViewNotice extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private NoticeVO paramClass;
	private NoticeVO resultClass;
	private NoticeVO next;
	private NoticeVO prev;
	
	private int currentPage;
	
	private int notice_no;

	public ViewNotice()throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		
		sqlMapper.update("readHitNotice",getNotice_no());
		
		resultClass = (NoticeVO)sqlMapper.queryForObject("noticeView",getNotice_no());
		next = (NoticeVO)sqlMapper.queryForObject("noticeNext",getNotice_no());
		System.out.println(getNotice_no());
		prev = (NoticeVO)sqlMapper.queryForObject("noticePrev",getNotice_no());
		
		
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

public NoticeVO getNext() {
	return next;
}

public void setNext(NoticeVO next) {
	this.next = next;
}

public NoticeVO getPrev() {
	return prev;
}

public void setPrev(NoticeVO prev) {
	this.prev = prev;
}

	
}
