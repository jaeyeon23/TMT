package item.tour;

import java.util.Date;

public class TourVO {
	private int no;            //상품번호
	private String name;      //상품명    
	private int price;       //가격
	private String content;  //내용
	private String country;	 //국가
	private String region;	//지역
	private int readcount;  //조회수
	private String image1; 
	private String image2;  //이미지1~3
	private String image3;  
	private Date reg_date;   //등록일
	private int grade;	//별점
	
	private String tourname;
	
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
	
	//가굑
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
	
	//조회수
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	//이미지1~3
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
	
	//등록일
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	//별점
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
	//검색
	public String getTourname() {
		return tourname;
	}
	public void setTourname(String tourname) {
		this.tourname = tourname;
	}

}
