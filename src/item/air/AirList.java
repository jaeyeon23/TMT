package item.air;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AirList extends ActionSupport implements SessionAware{

	public static Reader reader; 
	public static SqlMapClient sqlMapper; 
	private Map session;
	
	private List<AirVO> Airlist = new ArrayList<AirVO>();
	private AirVO avo = new AirVO();
	
	
	/*변수 시작*/
	private int no;
	private String arv;	
	private String dep;	
	private int price;	
	private String content;	
	private String image1;	
	private int seat;		
	private int seat_grade;	
	private Date ad;		
	private Date dd;		
	private String air_company;		
	private String grade;
	/*변수 end*/
	
	private String air_array;
	private String ad_str;			
	
	/*테스트 변수*/
	private String ckAD_1;			//06
	private String ckAD_2;			//12
	private String ckAD_3;			//18
	private String ckAD_4;			//24
	
	private String ckDD_1;			//06
	private String ckDD_2;			//12
	private String ckDD_3;			//18
	private String ckDD_4;			//24
	
	private String air_company_korea;		//대한항공
	private String air_company_asia;		//아시아나
	private String air_company_jin;		//진에어
	
	private int max_price; 
	private Map map = new HashMap<>();
	
	public AirList() throws IOException{
		/*sql에 한글을 보내기 위한 문장*/
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);


		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		if(arv == null) {
			Airlist = null;
		}else {
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date to = transFormat.parse(getAd_str());
				
			avo.setAd(to);
			avo.setArv(getArv());
			avo.setDep(getDep());
			avo.setSeat(getSeat());
			avo.setSeat_grade(getSeat_grade());
			
			max_price = (int) sqlMapper.queryForObject("listAir_max_price", avo);
			
		/*	if(air_array == null) {
				if(ckAD_1 == null && ckAD_2 == null && ckAD_3 == null && ckAD_4 == null
						&& ckDD_1 == null && ckDD_2 == null && ckDD_3 == null && ckDD_4 == null
						&& air_company_asia == null && air_company_korea == null && air_company_jin == null) {
					Airlist = sqlMapper.queryForList("listAir", avo);
				}else {
					makeSearch();
				}
				
			}else{
				if(getAir_array().equals("1")) {
					Airlist = sqlMapper.queryForList("listAir_lowprice", avo);
				}else if(getAir_array().equals("2")) {
					Airlist = sqlMapper.queryForList("listAir_ad_time", avo);
				}else if(getAir_array().equals("3")) {
					Airlist = sqlMapper.queryForList("listAir_dd_time", avo);
				}
			}
			*/
			
			if(ckAD_1 == null && ckAD_2 == null && ckAD_3 == null && ckAD_4 == null
					&& ckDD_1 == null && ckDD_2 == null && ckDD_3 == null && ckDD_4 == null
					&& air_company_asia == null && air_company_korea == null && air_company_jin == null) {
				
				if(getAir_array().equals("1")) {
					Airlist = sqlMapper.queryForList("listAir_lowprice", avo);
				}else if(getAir_array().equals("2")) {
					Airlist = sqlMapper.queryForList("listAir_ad_time", avo);
				}else if(getAir_array().equals("3")) {
					Airlist = sqlMapper.queryForList("listAir_dd_time", avo);
				}
				
			}else {
				makeSearch(air_array);
			}
		}
		
		setAir_array(air_array);
		
		return SUCCESS;
	}

	private void makeSearch(String air_array) throws IOException, SQLException{
		/*검색을 위한 map*/
		map.put("ad", getAd_str());
		map.put("arv", getArv());
		map.put("dep", getDep());
		map.put("seat", getSeat());
		map.put("seat_grade", getSeat_grade());
		map.put("air_array", air_array);
		map.put("price", price);
		
		/*출발시간*/
		if(ckAD_1 != null && ckAD_1.equals("06")) {
			map.put("ckAD_1", ckAD_1);
		}
		if(ckAD_2 != null && ckAD_2.equals("12")) {
			map.put("ckAD_2", ckAD_2);
		}
		if(ckAD_3 != null && ckAD_3.equals("18")) {
			map.put("ckAD_3", ckAD_3);
		}
		if(ckAD_4 != null && ckAD_4.equals("24")) {
			map.put("ckAD_4", ckAD_4);
		}
		
		/*도착시간*/
		if(ckDD_1 != null && ckDD_1.equals("06")) {
			map.put("ckDD_1", ckDD_1);
		}
		if(ckDD_2 != null && ckDD_2.equals("12")) {
			map.put("ckDD_2", ckDD_2);
		}
		if(ckDD_3 != null && ckDD_3.equals("18")) {
			map.put("ckDD_3", ckDD_3);
		}
		if(ckDD_4 != null && ckDD_4.equals("24")) {
			map.put("ckDD_4", ckDD_4);
		}
		
		/*항공*/
		if(air_company_korea != null && air_company_korea.equals("대한항공")) {
			map.put("air_company_korea", air_company_korea);
		}
		if(air_company_asia != null && air_company_asia.equals("아시아나")) {
			map.put("air_company_asia", air_company_asia);
		}
		if(air_company_jin != null && air_company_jin.equals("진에어")) {
			map.put("air_company_jin", air_company_jin);
		}
		
		Airlist = sqlMapper.queryForList("listAir_search", map);
		
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

	public Date getAd() {
		return ad;
	}

	public void setAd(Date ad) {
		this.ad = ad;
	}

	public Date getDd() {
		return dd;
	}

	public void setDd(Date dd) {
		this.dd = dd;
	}

	public String getAd_str() {
		return ad_str;
	}

	public void setAd_str(String ad_str) {
		this.ad_str = ad_str;
	}

	public String getCkAD_1() {
		return ckAD_1;
	}

	public void setCkAD_1(String ckAD_1) {
		this.ckAD_1 = ckAD_1;
	}

	public String getCkAD_2() {
		return ckAD_2;
	}

	public void setCkAD_2(String ckAD_2) {
		this.ckAD_2 = ckAD_2;
	}

	public String getCkAD_3() {
		return ckAD_3;
	}

	public void setCkAD_3(String ckAD_3) {
		this.ckAD_3 = ckAD_3;
	}

	public String getCkAD_4() {
		return ckAD_4;
	}

	public void setCkAD_4(String ckAD_4) {
		this.ckAD_4 = ckAD_4;
	}

	public String getCkDD_1() {
		return ckDD_1;
	}

	public void setCkDD_1(String ckDD_1) {
		this.ckDD_1 = ckDD_1;
	}

	public String getCkDD_2() {
		return ckDD_2;
	}

	public void setCkDD_2(String ckDD_2) {
		this.ckDD_2 = ckDD_2;
	}

	public String getCkDD_3() {
		return ckDD_3;
	}

	public void setCkDD_3(String ckDD_3) {
		this.ckDD_3 = ckDD_3;
	}

	public String getCkDD_4() {
		return ckDD_4;
	}

	public void setCkDD_4(String ckDD_4) {
		this.ckDD_4 = ckDD_4;
	}

	public String getAir_company_korea() {
		return air_company_korea;
	}

	public void setAir_company_korea(String air_company_korea) {
		this.air_company_korea = air_company_korea;
	}

	public String getAir_company_asia() {
		return air_company_asia;
	}

	public void setAir_company_asia(String air_company_asia) {
		this.air_company_asia = air_company_asia;
	}

	public String getAir_company_jin() {
		return air_company_jin;
	}

	public void setAir_company_jin(String air_company_jin) {
		this.air_company_jin = air_company_jin;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public Map getSession() {
		return session;
	}

	public int getMax_price() {
		return max_price;
	}

	public void setMax_price(int max_price) {
		this.max_price = max_price;
	}
}
