package order;

import java.util.Date;
import java.util.Map;

public class Order_Tour extends OrderVO{
	
	private int no;            //상품번호
	private String name;      //상품명   
	private int price;       //가격
	private String content;  //내용
	private String image1; 
	private String country;	 //국가
	private String region;	//지역
	private int amount; 	//상품개수
	private String reg_date; 	// 구매시간
	private String id;
	private int seq_no;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	// 상품번호
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	// 상품명
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	// 가격
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	// 내용
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	// 국가
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	// 지역
	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	// ̹이미지1~3
	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	
	// 객실수
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}

	

}
