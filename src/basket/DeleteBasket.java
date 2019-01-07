package basket;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

public class DeleteBasket extends ActionSupport implements SessionAware {

	private static Reader reader;
	private static SqlMapClient sqlMapper;

	BasketHVO hvo = new BasketHVO();
	BasketTVO tvo = new BasketTVO();

	private String id;
	private int no;

	private String del;
	private String[] rownum;
	
	private String type;

	private Map session;
	
	public DeleteBasket() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		rownum = del.split(", ");
		
		if(type.equals("0")) {
			hvo.setId(getId());
			
			for(int i = 0 ; i < rownum.length ; i++) {
				hvo.setSeq_no(Integer.parseInt(rownum[i]));
				sqlMapper.delete("deletehbasket", hvo);
			}
		}
		
		if(type.equals("1")) {
			tvo.setId(getId());
			
			for(int i = 0 ; i < rownum.length ; i++) {
				tvo.setSeq_no(Integer.parseInt(rownum[i]));
				sqlMapper.delete("deletetbasket", tvo);
			}
		}
		return SUCCESS;
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

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}