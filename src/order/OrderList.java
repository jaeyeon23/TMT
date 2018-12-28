package order;

import java.util.Map;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

public class OrderList extends ActionSupport implements SessionAware{
	
	private Map session;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}

}
