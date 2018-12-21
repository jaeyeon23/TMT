package admin.item;

import java.io.Reader;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;

public class AdminAirWrite extends ActionSupport{
	public static Reader reader; // Ʈ  reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API ϱ  sqlMapper ü
	
	private NoticeVO paramClass; //Ķ͸  ü (ü ϱ )
	private NoticeVO resultClass; //    ü (ó  ޱ )
	
	
}
