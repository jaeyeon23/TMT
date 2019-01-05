package admin.order;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import member.MemberVO;
import order.OrderVO;
import order.Order_Air;
import order.Order_Hotel;
import order.Order_Tour;

public class AdminOrderView extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map session;
	
	private String c;
	private int currentPage;
	private int seq_no;
	private String id;
	private OrderVO resultOrder;
	private MemberVO resultMember;
	
	public AdminOrderView() throws IOException{
	     reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	     sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	     reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		String cc = getC();
		resultMember = new MemberVO();
		resultMember.setId(getId());
		;
		if(cc==null||cc.equals("h")) {
			resultOrder = (Order_Hotel)sqlMapper.queryForObject("orderHView",getSeq_no());
		}else if(cc.equals("a")) {
			resultOrder = (Order_Air)sqlMapper.queryForObject("orderAView",getSeq_no());
		}else {
			resultOrder = (Order_Tour)sqlMapper.queryForObject("orderTView",getSeq_no());
		}
		resultMember = (MemberVO)sqlMapper.queryForObject("selectOne",resultMember);
		
		return SUCCESS;
	}
	
	
	
	

	
	public MemberVO getResultMember() {
		return resultMember;
	}

	public void setResultMember(MemberVO resultMember) {
		this.resultMember = resultMember;
	}

	public OrderVO getResultOrder() {
		return resultOrder;
	}

	public void setResultOrder(OrderVO resultOrder) {
		this.resultOrder = resultOrder;
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

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	

}
