package order;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;



public class DeleteOrder extends ActionSupport{
	
	private static Reader reader;
	private static SqlMapClient sqlMapper;

	OrderVO ovo = new OrderVO();

	private String id;
	private int[] deleteCheck;

	public DeleteOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {

		ovo.setId(getId());
		

		if (deleteCheck != null) {
			for (int i = 0; i < deleteCheck.length; i++) {
				ovo.setNo(deleteCheck[i]);
				sqlMapper.delete("deletebasket", ovo);
			}

		}

		return SUCCESS;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		DeleteOrder.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		DeleteOrder.sqlMapper = sqlMapper;
	}

	public OrderVO getOvo() {
		return ovo;
	}

	public void setOvo(OrderVO ovo) {
		this.ovo = ovo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int[] getDeleteCheck() {
		return deleteCheck;
	}

	public void setDeleteCheck(int[] deleteCheck) {
		this.deleteCheck = deleteCheck;
	}
	
	

}
