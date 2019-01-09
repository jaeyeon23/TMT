package item.tour;

import java.util.Date;

public class TourVO {
	private int no;            //상품번호
	private String name;      //상품명    
	private int price;       //가격
	private String country;	 //국가
	private String region;	//지역
	private int readcount;  //조회수
	private String main_image; 
	private String content_image;  //̹이미지1~3
	private Date reg_date;   //등록일
	private int amount;
	
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

	//등록일
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	//수량
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
