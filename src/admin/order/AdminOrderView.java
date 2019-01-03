package admin.order;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AdminOrderView extends ActionSupport implements SessionAware {
	private Map session;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	

	public Map getSession() {
		return session;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}

}
