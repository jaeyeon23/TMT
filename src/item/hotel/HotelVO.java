package item.hotel;

import java.util.Date;

public class HotelVO{
	private int no;            //상품번호
	private String name;      //상품명   
	private int price;       //가격
	private String content;  //내용
	private String country;	 //국가
	private String region;	//지역
	private int readcount;  //조회수
	private String main_image; 
	private String content_image;  //̹이미지1~3
	private String image3;  
	private Date reg_date;   //등록일
	private String tel;       //전화번호
	private String checkin;    //체크인
	private String checkout;   //체크아웃
	private int maxnum; 	//인원수
	private int grade;	// 별점
	private int room; 
	
	//상품번호
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	//상품명
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	//가격
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	//내용
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	//국가
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	//지역
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	//조호ㅣ수
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	//̹이미지1~3
	
	public String getImage3() {
		return image3;
	}
	public String getMain_image() {
		return main_image;
	}
	public void setMain_image(String main_image) {
		this.main_image = main_image;
	}
	public String getContent_image() {
		return content_image;
	}
	public void setContent_image(String content_image) {
		this.content_image = content_image;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	
	//등록일
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	//전화번호
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	//체크인
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	
	//체크아웃
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	
	//인원수
	public int getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}
	
	//별점
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	//객실수
	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

}