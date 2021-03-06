package admin.notice;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;

public class AdminNoticeDelete extends ActionSupport{
	public static Reader reader; //파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체
	
	private NoticeVO paramClass; //파라미터를 저장할 객체 (객체를 전달하기 위해)
	private NoticeVO resultClass; //쿼리 결과 값을 저장할 객체 (처리된 결과를 받기 위해)
	
	private int currentPage; //현재 페이지

	private int notice_no; //글 번호
	
	private String uri;
	
	public AdminNoticeDelete() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.

		reader.close();
	}
public String execute() throws Exception {
		sqlMapper.delete("deleteNotice", getNotice_no());
		
		setUri("?currentPage="+getCurrentPage());
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

public String getUri() {
	return uri;
}
public void setUri(String uri) {
	this.uri = uri;
}
	
}
