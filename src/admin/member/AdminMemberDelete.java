package admin.member;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AdminMemberDelete extends ActionSupport implements SessionAware {
	private Map session;
	

public Map getSession() {
	return session;
}

public void setSession(Map session) {
	this.session = session;
}

}
