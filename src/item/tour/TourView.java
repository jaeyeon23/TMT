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

	private TourVO paramClass = new TourVO(); //파라미터를 저장할 객체
	private TourVO resultClass = new TourVO(); //쿼리 결과 값을 저장할 객체

	private int currentPage;

	private int no;

	private String contentDisposition;
	private long contentLength;

	// 생성자
	public TourView() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}

	// 상세보기
	public String execute() throws Exception {
		// 해당 글의 조회수 +1.
		paramClass.setNo(getNo());
		sqlMapper.update("updateReadHit", paramClass);

		// 해당 번호의 글을 가져온다.
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
