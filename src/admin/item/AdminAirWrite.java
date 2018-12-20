package admin.item;

import java.io.Reader;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.opensymphony.xwork2.ActionSupport;

import service.NoticeVO;

public class AdminAirWrite extends ActionSupport{
	public static Reader reader; //파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체
	
	private NoticeVO paramClass; //파라미터를 저장할 객체 (객체를 전달하기 위해)
	private NoticeVO resultClass; //쿼리 결과 값을 저장할 객체 (처리된 결과를 받기 위해)
	
	
}
