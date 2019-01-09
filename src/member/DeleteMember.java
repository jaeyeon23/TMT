package member;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteMember extends ActionSupport implements SessionAware{
	
	private Reader reader;
	private SqlMapClient sqlMapper;
	
	private Map session;
	
	private String id;
	private String password;

	private MemberVO paramClass= new MemberVO();
	private MemberVO resultClass = new MemberVO();
	
	public DeleteMember() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception{
		return SUCCESS;
	}

	public String Delete() throws Exception {
		
		paramClass.setId((String) session.get("session_id"));
		
		Map map = new HashMap();
		String idd = paramClass.getId();
		
		map.put("id",idd);
		
		int tmp1 = (Integer)sqlMapper.queryForObject("hotelCOne",map);
		int tmp2 = (Integer)sqlMapper.queryForObject("tourCOne",map);
		
		map.put("refH",tmp1);
		map.put("refT",tmp2);
		sqlMapper.delete("deleteMember", paramClass);
		sqlMapper.delete("deleteMemberH",map);
		sqlMapper.delete("deleteMemberT",map);
		sqlMapper.delete("deleteMemberA",map);
		sqlMapper.delete("deleteMemberBH",map);
		sqlMapper.delete("deleteMemberBT",map);
		sqlMapper.delete("deleteMemberCH",map);
		sqlMapper.delete("deleteMemberCT",map);
	
		session.remove("session_id");
		session.remove("session_admin");
		
		return SUCCESS;
	}

	public Reader getReader() {
		return reader;
	}

	public void setReader(Reader reader) {
		this.reader = reader;
	}

	public SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
