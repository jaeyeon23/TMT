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
import item.hotel.HotelVO;
import item.tour.TourVO;

public class Search extends ActionSupport{

	public static Reader reader; 
	public static SqlMapClient sqlMapper; 
	
	/*air*/
	private List<AirVO> Airlist = new ArrayList<AirVO>();
	
	/*hotel*/
	private List<HotelVO> Hotellist = new ArrayList<>();
	
	/*tour*/
	private List<TourVO> Tourlist = new ArrayList<>();
	
	private String searchbox;
	
	public Search() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		Airlist = sqlMapper.queryForList("search_air", searchbox);
		Hotellist = sqlMapper.queryForList("search_hotel", searchbox);
		Tourlist = sqlMapper.queryForList("search_tour", searchbox);
		
		return SUCCESS;
	}

	public String getSearchbox() {
		return searchbox;
	}

	public void setSearchbox(String searchbox) {
		this.searchbox = searchbox;
	}

	public List<AirVO> getAirlist() {
		return Airlist;
	}

	public void setAirlist(List<AirVO> airlist) {
		Airlist = airlist;
	}

	public List<HotelVO> getHotellist() {
		return Hotellist;
	}

	public void setHotellist(List<HotelVO> hotellist) {
		Hotellist = hotellist;
	}

	public List<TourVO> getTourlist() {
		return Tourlist;
	}

	public void setTourlist(List<TourVO> tourlist) {
		Tourlist = tourlist;
	}
	
}
