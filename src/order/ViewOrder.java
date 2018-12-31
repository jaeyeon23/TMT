package order;

import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;

public class ViewOrder extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private OrderVO paramClass = new OrderVO(); //�Ķ���͸� ������ ��ü
	private OrderVO resultClass = new OrderVO(); //���� ��� ���� ������ ��ü

	private int currentPage;

	private int no;
	
	public ViewOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}

	
	@Override
	public String execute() throws Exception {
		
		paramClass.setNo(getNo());
		sqlMapper.update("updateReadHit", paramClass);
		
		resultClass = (OrderVO) sqlMapper.queryForObject("selectOne", getNo());
		
		return SUCCESS;
	}


	public static Reader getReader() {
		return reader;
	}


	public static void setReader(Reader reader) {
		ViewOrder.reader = reader;
	}


	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}


	public static void setSqlMapper(SqlMapClient sqlMapper) {
		ViewOrder.sqlMapper = sqlMapper;
	}


	public OrderVO getParamClass() {
		return paramClass;
	}


	public void setParamClass(OrderVO paramClass) {
		this.paramClass = paramClass;
	}


	public OrderVO getResultClass() {
		return resultClass;
	}


	public void setResultClass(OrderVO resultClass) {
		this.resultClass = resultClass;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}
	
	


}
