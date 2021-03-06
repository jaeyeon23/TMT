package order;

import java.util.Date;

public class Order_Air extends OrderVO {
	
	private int no;
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

	private String id;
	private Date reg_date;
	private int seq_no;
	
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
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getSeq_no() {
		return seq_no;
	}
	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	
	

}
