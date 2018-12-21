package admin.item;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.air.AirVO;

public class AdminAirList extends ActionSupport{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount=9;
	private int blockPage = 5;
	private String pagingHtml;
	private AirPagingAction page;
	
	private List<AirVO> list = new ArrayList<AirVO>();
	
	public AdminAirList() throws IOException{
	      
	      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
	      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
	      reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		list = sqlMapper.queryForList("select-allA");
		
		totalCount = list.size(); // listü ũ- totalCount
		page = new AirPagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) //   ü  
			lastCount = page.getEndCount()+1; // +1 ϱ.
		//  ¡ϱ	
//		System.out.println("Ż: "+totalCount);
		list = list.subList(page.getStartCount(), lastCount);
		// listü ùٺ ٱ ƿ´.
//		System.out.println("Ʈ: "+list);
		
		return SUCCESS;
	}
	
	
}
