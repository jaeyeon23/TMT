package item.hotel;

import java.util.Date;

public class HotelVO{
	private int no;            //품호
	private String name;      //품      
	private int price;       //
	private String content;  //
	private String country;	 //
	private String region;	//
	private int readcount;  //회
	private String image1; 
	private String image2;  //譴1~3
	private String image3;  
	private Date reg_date;   //
	private String tel;       //화호
	private String checkin;    //체크
	private String checkout;   //체크틸
	private int maxnum; 	//恝
	private int grade;	// 
	
	private String hotelname;
	private int number;
	private Date inDay, outDay;
	
	//품호
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	//품
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	//
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	//
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	//
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	//
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	//회
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	//譴1~3
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
	
	//
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	//화호
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	//체크
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	
	//체크틸
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	
	//恝
	public int getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	
	//擥
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}

	// 체크인 , 체크아웃
	public Date getInDay() {
		return inDay;
	}

	public void setInDay(Date inDay) {
		this.inDay = inDay;
	}

	public Date getOutDay() {
		return outDay;
	}

	public void setOutDay(Date outDay) {
		this.outDay = outDay;
	}
	
}