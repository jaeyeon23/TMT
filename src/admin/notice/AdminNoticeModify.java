package admin.notice;

import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;

public class AdminNoticeModify extends ActionSupport {
	public static Reader reader; //���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü
	
	private NoticeVO paramClass; //�Ķ���͸� ������ ��ü (��ü�� �����ϱ� ����)
	private NoticeVO resultClass; //���� ��� ���� ������ ��ü (ó���� ����� �ޱ� ����)
	
	private int currentPage; //���� ������

	private int notice_no; //�� ��ȣ
	private String subject; //����
	private String content; //�� ����
	private String uri;
	
	public AdminNoticeModify() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.

		reader.close();
	}
	public String form() throws Exception {
		return SUCCESS;

	}
	public String execute() throws Exception {
		
		//�Ķ���Ϳ� ����Ʈ ��ü ����
		paramClass = new NoticeVO();
		
		//����� �׸� ����
		paramClass.setNotice_no(getNotice_no());
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent());
		
		//��� ���� ����
		sqlMapper.update("modifyNotice", paramClass);
		

		setUri("?notice_no="+getNotice_no()+"&currentPage="+getCurrentPage());
		return SUCCESS;
		
	}
	
	
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
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
}
