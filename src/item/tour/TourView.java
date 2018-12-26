package item.tour;

import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;

public class TourView extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private TourVO paramClass = new TourVO(); //�Ķ���͸� ������ ��ü
	private TourVO resultClass = new TourVO(); //���� ��� ���� ������ ��ü

	private int currentPage;

	private int no;

	private String contentDisposition;
	private long contentLength;

	// ������
	public TourView() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}

	// �󼼺���
	public String execute() throws Exception {
		// �ش� ���� ��ȸ�� +1.
		paramClass.setNo(getNo());
		sqlMapper.update("updateReadHit", paramClass);

		// �ش� ��ȣ�� ���� �����´�.
		resultClass = (TourVO) sqlMapper.queryForObject("selectOneT", getNo());

		return SUCCESS;
	}



	public TourVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(TourVO paramClass) {
		this.paramClass = paramClass;
	}

	public TourVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(TourVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getContentDisposition() {
		return contentDisposition;
	}

	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
