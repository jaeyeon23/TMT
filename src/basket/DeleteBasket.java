package basket;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteBasket extends ActionSupport {
	
	private static Reader reader;
	private static SqlMapClient sqlMapper;

	BasketVO bvo = new BasketVO();

	private String id;
	private int[] deleteCheck;

	public DeleteBasket() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {

		bvo.setId(getId());
		

		if (deleteCheck != null) {
			for (int i = 0; i < deleteCheck.length; i++) {
				bvo.setNo(deleteCheck[i]);
				sqlMapper.delete("deletebasket", bvo);
			}

		}

		return SUCCESS;
	}

	public static Reader getReader() {
		return reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		DeleteBasket.sqlMapper = sqlMapper;
	}

	public BasketVO getBvo() {
		return bvo;
	}

	public void setBvo(BasketVO bvo) {
		this.bvo = bvo;
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

	public static void setReader(Reader reader) {
		DeleteBasket.reader = reader;
	}

}
