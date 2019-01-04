package basket;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

public class DeleteBasket extends ActionSupport implements SessionAware {

	private static Reader reader;
	private static SqlMapClient sqlMapper;

	BasketHVO hvo = new BasketHVO();
	BasketTVO tvo = new BasketTVO();

	private String id;
	private int no;
	private int seq_no;
	private String seq_no_str;
	
	private int size;
	private String size_str;
		
	private int[] deleteCheck;
	private int[] deleteCheck2;

	private String[] del;
	
	private Map session;
	private HttpServletRequest request;
	
	public DeleteBasket() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		size = Integer.parseInt(size_str);
		
		System.out.println("test");
		del = request.getParameterValues("del");
		
		tvo.setId(getId());
		for(int i = 0 ; i < del.length ; i++) {
			tvo.setSeq_no(Integer.parseInt(del[i]));
			sqlMapper.delete("deletetbasket", hvo);
		}
		/*hvo.setId(getId());
		hvo.setSeq_no(getSeq_no());

		if (deleteCheck != null) {
			for (int i = 0; i < deleteCheck.length; i++) {
				hvo.setNo(deleteCheck[i]);
				sqlMapper.delete("deletehbasket", hvo);
			}

		}

		// 투어
		tvo.setId(getId());
		tvo.setSeq_no(getSeq_no());
		
		
		if (deleteCheck2 != null) {
			for (int i = 0; i < deleteCheck2.length; i++) {
				tvo.setNo(deleteCheck2[i]);
				sqlMapper.delete("deletetbasket", tvo);
			}

		}
*/
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

	public BasketHVO gethvo() {
		return hvo;
	}

	public void sethvo(BasketHVO hvo) {
		this.hvo = hvo;
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

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public BasketHVO getHvo() {
		return hvo;
	}

	public void setHvo(BasketHVO hvo) {
		this.hvo = hvo;
	}

	public BasketTVO getTvo() {
		return tvo;
	}

	public void setTvo(BasketTVO tvo) {
		this.tvo = tvo;
	}

	public int[] getDeleteCheck2() {
		return deleteCheck2;
	}

	public void setDeleteCheck2(int[] deleteCheck2) {
		this.deleteCheck2 = deleteCheck2;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}


	public void setSeq_no_str(String seq_no_str) {
		this.seq_no_str = seq_no_str;
	}

	public void setSize_str(String size_str) {
		this.size_str = size_str;
	}

	public String[] getDel() {
		return del;
	}

	public void setDel(String[] del) {
		this.del = del;
	}

}