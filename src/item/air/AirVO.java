package item.air;

import java.util.Date;

public class AirVO {

	private int no;
	private String arv;	//�����
	private String dep;	//������
	private int price;	//����
	private String content;	//����
	private String image1;	//�װ��� �̹��� �����
	private int seat;		//�¼� ��
	private int seat_grade;	//�¼� ���
	private Date ad;		//��߽ð�
	private Date dd;		//�����ð�
	private String air_company;		//�װ���
	private int grade;		//����
	
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
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
}
