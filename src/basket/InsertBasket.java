package basket;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class InsertBasket  extends ActionSupport implements SessionAware{
	
	private Reader reader;
	private SqlMapClient sqlMapper;
	private Map session;
	private BasketVO bvo = new BasketVO();
	
	private String name;
	private int price;
	private String content;
	private String country;
	private String region;
	private String image1;
	private String image2;
	private String image3;
	private String id;
	private String day;
	private String checkin;
	private String checkout;
	private Date ad;
	private Date dd;
	private String hai;
	private int no;
	private int seat;
	private int seat_grade;
	private String room;
	private String people;
	private String arv;
	private String dep;
	private String air_company;
	private int amount;
	private int grade;
	

	private BasketVO resultClass;
	
	public InsertBasket() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		/*bvo.setId(id);
		resultClass = (BasketVO) sqlMapper.queryForObject("putbasket",bvo);		*/
		System.out.println("test : " + id);
		System.out.println("test : " + country);
	
		
		
		return SUCCESS;
	}

	public Reader getReader() {
		return reader;
	}

	public void setReader(Reader reader) {
		this.reader = reader;
	}

	public SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public BasketVO getBvo() {
		return bvo;
	}

	public void setBvo(BasketVO bvo) {
		this.bvo = bvo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
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

	public String getHai() {
		return hai;
	}

	public void setHai(String hai) {
		this.hai = hai;
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

	public int getSeat_grade() {
		return seat_grade;
	}

	public void setSeat_grade(int seat_grade) {
		this.seat_grade = seat_grade;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getPeople() {
		return people;
	}

	public void setPeople(String people) {
		this.people = people;
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

	public String getAir_company() {
		return air_company;
	}

	public void setAir_company(String air_company) {
		this.air_company = air_company;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}


	public BasketVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(BasketVO resultClass) {
		this.resultClass = resultClass;
	}
	
	
	



}
