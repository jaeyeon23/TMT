package basket;

public class BasketTVO {
   
   private int no;
   private String name;
   private int price;
   private String country;
   private String content;
   private String region;
   private String image1;
   private String id;
   private int seq_no;
   
   public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public int getNo() {
      return no;
   }
   public void setNo(int no) {
      this.no = no;
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
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
public int getSeq_no() {
	return seq_no;
}
public void setSeq_no(int seq_no) {
	this.seq_no = seq_no;
}

}