package item.air;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AirList extends ActionSupport{

	public static Reader reader; 
	public static SqlMapClient sqlMapper; 
										
	private List<AirVO> Airlist = new ArrayList<AirVO>();
	private AirVO avo = new AirVO();
	
	
	
	
	
	/*변수*/
	private int no;
	private String arv;	//출발지
	private String dep;	//도착지
	private int price;	//가격
	private String content;	//내용
	private String image1;	//항공사 이미지 썸네일
	private int seat;		//좌석 수
	private int seat_grade;	//좌석 등급
	private String ad;		//출발일
	private String dd;		//도착일
	private String air_company;		//항공사
	private String grade;
	
	/*변수 end*/
	private String air_array;
	
	
	
	
	public AirList() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		if(arv == null) {
			Airlist = null;
		}else {
			/*<option value="1">가격 낮은 순</option>	
			<option value="2">가는 날 출발시간 빠른 순</option>
			<option value="3">가는 날 도착시간 빠른 순</option>*/
			
			avo.setArv(getArv());
			avo.setDep(getDep());
			avo.setAd(getAd());
			avo.setSeat(getSeat());
			avo.setSeat_grade(getSeat_grade());
			
			if(air_array == null) {
				Airlist = sqlMapper.queryForList("listAir", avo);
			}else {
				if(getAir_array().equals("1")) {
					Airlist = sqlMapper.queryForList("listAir_lowprice", avo);
				}else if(getAir_array().equals("2")) {
					Airlist = sqlMapper.queryForList("listAir_ad_time", avo);
				}else if(getAir_array().equals("3")) {
					Airlist = sqlMapper.queryForList("listAir_dd_time", avo);
				}
			}
		}
		
		return SUCCESS;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getArv() {
		return arv;
	}

	public void setArv(String arv) {
		this.arv = arv;
	}

	public String getDep() {
		return dep;
	}

	public void setDep(String dep) {
		this.dep = dep;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public int getSeat_grade() {
		return seat_grade;
	}

	public void setSeat_grade(int seat_grade) {
		this.seat_grade = seat_grade;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	public String getAir_company() {
		return air_company;
	}

	public void setAir_company(String air_company) {
		this.air_company = air_company;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public List<AirVO> getAirlist() {
		return Airlist;
	}

	public void setAirlist(List<AirVO> airlist) {
		Airlist = airlist;
	}

	public AirVO getAvo() {
		return avo;
	}

	public void setAvo(AirVO avo) {
		this.avo = avo;
	}

	public String getAir_array() {
		return air_array;
	}

	public void setAir_array(String air_array) {
		this.air_array = air_array;
	}

}