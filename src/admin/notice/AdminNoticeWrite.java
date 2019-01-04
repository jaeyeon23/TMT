package admin.notice;

import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;

public class AdminNoticeWrite extends ActionSupport implements SessionAware {
	public static Reader reader; //파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체
	private Map session;
	
	private NoticeVO paramClass; //파라미터를 저장할 객체 (객체를 전달하기 위해)
	private NoticeVO resultClass; //쿼리 결과 값을 저장할 객체 (처리된 결과를 받기 위해)
	
	private String subject; //제목
	private String content; //글 내용
	Calendar today = Calendar.getInstance(); //오늘 날짜 구하기.
	
	public AdminNoticeWrite() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.

		reader.close();
	}
	public String form() throws Exception {
		return SUCCESS;

	}
	public String execute() throws Exception {
		
		//파라미터와 리절트 객체 생성
		paramClass = new NoticeVO();
		resultClass = new NoticeVO();
		
		//등록할 항목 설정
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent());
		paramClass.setReg_date(today.getTime());
		
		//등록 쿼리 수행
		sqlMapper.insert("insertNotice", paramClass);
		

		
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

	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	
}
