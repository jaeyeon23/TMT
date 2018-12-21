package item.air;

import java.io.IOException;
import java.io.Reader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
	
	
	
	
	
	/*����*/
	private int no;
	private String arv;	//�����
	private String dep;	//������
	private int price;	//����
	private String content;	//����
	private String image1;	//�װ��� �̹��� �����
	private int seat;		//�¼� ��
	private int seat_grade;	//�¼� ���
	private Date ad;		//�����
	private Date dd;		//������
	private Date ad_time;		//��߽ð�
	private Date dd_time;		//�����ð�
	private String air_company;		//�װ���
	private String grade;
	
	/*���� end*/
	private String air_array;
	private String ad_str;			//��¥ string
	
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
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");

			Date to = transFormat.parse(getAd_str());
				
			avo.setAd(to); 
			avo.setArv(getArv());
			avo.setDep(getDep());
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

	public Date getAd_time() {
		return ad_time;
	}

	public void setAd_time(Date ad_time) {
		this.ad_time = ad_time;
	}

	public Date getDd_time() {
		return dd_time;
	}

	public void setDd_time(Date dd_time) {
		this.dd_time = dd_time;
	}

	public String getAd_str() {
		return ad_str;
	}

	public void setAd_str(String ad_str) {
		this.ad_str = ad_str;
	}
}