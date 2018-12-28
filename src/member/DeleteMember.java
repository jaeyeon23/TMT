package member;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteMember extends ActionSupport{
	
	private Reader reader;
	private SqlMapClient sqlMapper;

	private MemberVO mvo = new MemberVO();
	
	private String id;
	private int no;
	
	private MemberVO paramClass= new MemberVO();
	private MemberVO resultClass = new MemberVO();
	
	public DeleteMember() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		
		resultClass = (MemberVO) sqlMapper.queryForObject("selectOne",getId());
		// 삭제할 항목 설정.
		paramClass.setNo(getNo());
		
						
		// 삭제 쿼리 수행.
		sqlMapper.delete("deleteMember", paramClass);

		
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

	public MemberVO getMvo() {
		return mvo;
	}

	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
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


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}
	
	
	

}
