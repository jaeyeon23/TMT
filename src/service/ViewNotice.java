package service;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ViewNotice extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private NoticeVO paramClass;
	private NoticeVO resultClass;
	
	private int currentPage;
	
	private int notice_no;

	public ViewNotice()throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	
	
	
	
	
	@Override
	public String execute() throws Exception {
		paramClass = new NoticeVO();
		paramClass.setNotice_no(getNotice_no());
		sqlMapper.update("readHitNotice",paramClass);
		
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
	
	
}
