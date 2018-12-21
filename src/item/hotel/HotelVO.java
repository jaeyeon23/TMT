package item.hotel;

import java.util.Date;

public class HotelVO{
	private int no;            //��ǰ��ȣ
	private String name;      //��ǰ��      
	private int price;       //����
	private String content;  //����
	private String country;	 //����
	private String region;	//����
	private int readcount;  //��ȸ��
	private String image1; 
	private String image2;  //�̹���1~3
	private String image3;  
	private Date reg_date;   //�����
	private String tel;       //��ȭ��ȣ
	private String checkin;    //üũ��
	private String checkout;   //üũ�ƿ�
	private int maxnum; 	//�ο���
	private int grade;	//��� ����
	
	
	//��ǰ��ȣ
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	//��ǰ��
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	//����
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	//����
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	//����
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	//����
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	//��ȸ��
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	//�̹���1~3
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
	
	//�����
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	//��ȭ��ȣ
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	//üũ��
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	
	//üũ�ƿ�
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	
	//�ο���
	public int getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	
	//��պ���
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}