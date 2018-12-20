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
		
		totalCount = list.size(); // list객체의 크기- totalCount
		page = new AirPagingAction(currentPage, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		if(page.getEndCount()<totalCount) // 마지막 페이지가 전체 수보다 작으면
			lastCount = page.getEndCount()+1; // +1 하기.
		// 여기까지가 페이징하기	
//		System.out.println("토탈: "+totalCount);
		list = list.subList(page.getStartCount(), lastCount);
		// list객체에 첫줄부터 끝줄까지 담아온다.
//		System.out.println("리스트: "+list);
		
		return SUCCESS;
	}
	
	
}
