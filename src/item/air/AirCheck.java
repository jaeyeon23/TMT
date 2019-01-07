package item.air;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import order.Order_Air;

public class AirCheck extends ActionSupport implements SessionAware {

	
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private AirVO avo = new AirVO();
	private AirVO result = new AirVO();
	private Order_Air oa = new Order_Air();
	
	private int no;
	private int seat;	
	
	private int hour;
	private int min;
	
	/*order_air vo*/
	private String arv;
	private String dep;
	private int price;
	private String content;
	private String image1;
	private int people;
	private int seat_grade;
	private Date ad;
	private Date dd;
	private String air_company;
	private int grade;
	private String id;
	private Map session;
	
	public AirCheck() throws IOException {
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);

		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		avo.setNo(getNo());
		avo.setSeat(getSeat());
		
		sqlMapper.update("update_seat", avo);
		result = (AirVO) sqlMapper.queryForObject("airCheck", getNo());

		oa.setNo(result.getNo());
		oa.setArv(result.getArv());
		oa.setDep(result.getDep());
		oa.setPrice(result.getPrice());
		oa.setContent(result.getContent());
		oa.setImage1(result.getImage1());
		oa.setPeople(getSeat());
		oa.setSeat_grade(result.getSeat_grade());
		oa.setAd(result.getAd());
		oa.setDd(result.getDd());
		oa.setAir_company(result.getAir_company());
		oa.setId(getId());
		
		sqlMapper.insert("putorder_A", oa);
		
		return SUCCESS;
	}

	
	public String regulation() throws Exception{
		
		return SUCCESS;
	}
	
	public String view() throws Exception{
		avo.setNo(getNo());
		
		result = (AirVO) sqlMapper.queryForObject("airCheck", getNo());
		
		long diff = (long) ((result.getDd().getTime() - result.getAd().getTime())/(1000.0 * 60));
		
		if(diff < 60) {
			setHour(0);
			setMin((int) diff);
		}else {
			setHour((int)diff/60);
			setMin((int)diff%60);
		}
		
		return SUCCESS;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public AirVO getAvo() {
		return avo;
	}

	public void setAvo(AirVO avo) {
		this.avo = avo;
	}

	public AirVO getResult() {
		return result;
	}

	public void setResult(AirVO result) {
		this.result = result;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public Order_Air getOa() {
		return oa;
	}

	public void setOa(Order_Air oa) {
		this.oa = oa;
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

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public int getSeat_grade() {
		return seat_grade;
	}

	public void setSeat_grade(int seat_grade) {
		this.seat_grade = seat_grade;
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

	public String getAir_company() {
		return air_company;
	}

	public void setAir_company(String air_company) {
		this.air_company = air_company;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getHour() {
		return hour;
	}

	public void setHour(int hour) {
		this.hour = hour;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}
	
}
