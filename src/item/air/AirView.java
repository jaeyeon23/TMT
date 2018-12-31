package item.air;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class AirView implements SessionAware{

	private Map session;

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
	
}
