package main;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import item.tour.TourVO;

public class Main extends ActionSupport{

	public static Reader reader; 
	public static SqlMapClient sqlMapper; 
	
	private String region;
	private List<TourVO> Tourlist_Jeju = new ArrayList<>();
	private List<TourVO> Tourlist_Sanghai = new ArrayList<>();
	private List<TourVO> Tourlist_Washington = new ArrayList<>();
	
	public Main() throws IOException {
		/*sql에 한글을 보내기 위한 문장*/
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);

		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		region = "제주도";
		Tourlist_Jeju = sqlMapper.queryForList("Main_Tour", region);
		
		region = "상하이";
		Tourlist_Sanghai = sqlMapper.queryForList("Main_Tour", region);
		
		region = "워싱턴";
		Tourlist_Washington = sqlMapper.queryForList("Main_Tour", region);
		
		return SUCCESS;
	}


	public List<TourVO> getTourlist_Sanghai() {
		return Tourlist_Sanghai;
	}

	public void setTourlist_Sanghai(List<TourVO> tourlist_Sanghai) {
		Tourlist_Sanghai = tourlist_Sanghai;
	}

	public List<TourVO> getTourlist_Jeju() {
		return Tourlist_Jeju;
	}

	public void setTourlist_Jeju(List<TourVO> tourlist_Jeju) {
		Tourlist_Jeju = tourlist_Jeju;
	}

	public List<TourVO> getTourlist_Washington() {
		return Tourlist_Washington;
	}

	public void setTourlist_Washington(List<TourVO> tourlist_Washington) {
		Tourlist_Washington = tourlist_Washington;
	}


}
