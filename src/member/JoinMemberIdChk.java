package member;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.common.resources.Resources;
import com.opensymphony.xwork2.ActionSupport;

public class JoinMemberIdChk extends ActionSupport{

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private MemberVO resultClass;

	private String id;
	private int chkId;

	
	public JoinMemberIdChk() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		
		resultClass = new MemberVO();
		
		if(getId() != null) {
			resultClass = (MemberVO) sqlMapper.queryForObject("ChkId",getId());
		}
		
		if(resultClass == null) {
			chkId = 0;
		}else {
			chkId = 1;
		}
	
		return SUCCESS;
	}

	public MemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getChkId() {
		return chkId;
	}

	public void setChkId(int chkId) {
		this.chkId = chkId;
	}
	
}
