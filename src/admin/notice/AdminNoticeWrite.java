package admin.notice;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;


import service.NoticeVO;

public class AdminNoticeWrite extends ActionSupport{
	public static Reader reader; //���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü
	
	private NoticeVO paramClass; //�Ķ���͸� ������ ��ü (��ü�� �����ϱ� ����)
	private NoticeVO resultClass; //���� ��� ���� ������ ��ü (ó���� ����� �ޱ� ����)
	
	private String subject; //����
	private String content; //�� ����
	Calendar today = Calendar.getInstance(); //���� ��¥ ���ϱ�.
	
	public AdminNoticeWrite() throws IOException {
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
		resultClass = new NoticeVO();
		
		//����� �׸� ����
		paramClass.setSubject(getSubject());
		paramClass.setContent(getContent());
		paramClass.setReg_date(today.getTime());
		
		//��� ���� ����
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
	
	
}
