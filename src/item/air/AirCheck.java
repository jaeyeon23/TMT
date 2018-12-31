package item.air;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class AirCheck extends ActionSupport implements SessionAware {

	
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private AirVO avo = new AirVO();
	private AirVO result = new AirVO();
	
	private int no;
	private int seat;	
	
	private Map session;
	
	public AirCheck() throws IOException {
		/*sql�� �ѱ��� ������ ���� ����*/
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);

		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		avo.setNo(getNo());
		avo.setSeat(getSeat());
		
		sqlMapper.insert("update_seat", avo);
		result = (AirVO) sqlMapper.queryForObject("airCheck", getNo());
		
		return SUCCESS;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public AirVO getAvo() {
		return avo;
	}

	public void setAvo(AirVO avo) {
		this.avo = avo;
	}

	public AirVO getResult() {
		return result;
	}

	public void setResult(AirVO result) {
		this.result = result;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
}
