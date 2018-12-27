package main;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;

public class Search extends ActionSupport{

	public static Reader reader; 
	public static SqlMapClient sqlMapper; 
	
	/*air*/
	private List<AirVO> Airlist = new ArrayList<AirVO>();
	private AirVO avo = new AirVO();
	
	private String searchbox;
	
	public Search() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		Airlist = sqlMapper.queryForList("search_air", getSearchbox());
		
		return SUCCESS;
	}

	public String getSearchbox() {
		return searchbox;
	}

	public void setSearchbox(String searchbox) {
		this.searchbox = searchbox;
	}
	
}
