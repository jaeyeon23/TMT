package order;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteOrder extends ActionSupport implements SessionAware {

	private static Reader reader;
	private static SqlMapClient sqlMapper;
	private Map session;

	private Order_Hotel order_Hotel = new Order_Hotel();
	private Order_Tour order_Tour = new Order_Tour();
	private Order_Air order_Air = new Order_Air();

	private String id;
	private int no;

	private String del;
	private String[] rownum;

	private String type;

	public DeleteOrder() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);

		reader.close();
	}

	@Override
	public String execute() throws Exception {
		if(del == null) {
			return SUCCESS;
		}
		
		rownum = del.split(", ");

		if (type.equals("0")) {
			order_Hotel.setId(getId());

			for (int i = 0; i < rownum.length; i++) {
				order_Hotel.setSeq_no(Integer.parseInt(rownum[i]));
				sqlMapper.delete("deleteHorder", order_Hotel);
			}
		}
		
		if (type.equals("1")) {
			order_Tour.setId(getId());

			for (int i = 0; i < rownum.length; i++) {
				order_Tour.setSeq_no(Integer.parseInt(rownum[i]));
				sqlMapper.delete("deleteTorder", order_Tour);
			}
		}
		
		if (type.equals("2")) {
			order_Air.setId(getId());

			for (int i = 0; i < rownum.length; i++) {
				order_Air.setSeq_no(Integer.parseInt(rownum[i]));
				sqlMapper.delete("deleteAorder", order_Air);
			}
		}

		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Order_Hotel getOrder_Hotel() {
		return order_Hotel;
	}

	public void setOrder_Hotel(Order_Hotel order_Hotel) {
		this.order_Hotel = order_Hotel;
	}

	public Order_Tour getOrder_Tour() {
		return order_Tour;
	}

	public void setOrder_Tour(Order_Tour order_Tour) {
		this.order_Tour = order_Tour;
	}

	public Order_Air getOrder_Air() {
		return order_Air;
	}

	public void setOrder_Air(Order_Air order_Air) {
		this.order_Air = order_Air;
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
