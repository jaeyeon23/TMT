package member;

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

public class FindMemberId extends ActionSupport implements SessionAware {
	
	private Map session;
	private String name;
	private String email;
	private String id;
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<MemberVO> list = new ArrayList<MemberVO>();
	
	private MemberVO paramClass=new MemberVO();
	private MemberVO resultClass=new MemberVO();
	
	public FindMemberId()throws IOException{
		reader=Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper=SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String Form() throws Exception{
		return SUCCESS;
	}
	
	public String execute() throws Exception{
		
		paramClass.setName(getName());
		paramClass.setEmail(getEmail());
		
		list=sqlMapper.queryForList("FindID",paramClass);
		
		if(list.size()>0) {
			return SUCCESS;
		}else {
			return ERROR;
		}
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<MemberVO> getList() {
		return list;
	}

	public void setList(List<MemberVO> list) {
		this.list = list;
	}

	public MemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(MemberVO paramClass) {
		this.paramClass = paramClass;
	}

	public MemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}
	

}
