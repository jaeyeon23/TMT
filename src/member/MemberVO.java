package member;

import java.util.Date;
public class MemberVO {

	private int no;
	private String id;
	private String password;
	private String name;
	private String email;
	private String tel;
	private int admin;
	private String passport;
	private Date regdate;
	private String image1;
	private String marketing1;
	private String marketing2;
	private String newpassword;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getMarketing1() {
		return marketing1;
	}
	public void setMarketing1(String marketing1) {
		this.marketing1 = marketing1;
	}
	public String getMarketing2() {
		return marketing2;
	}
	public void setMarketing2(String marketing2) {
		this.marketing2 = marketing2;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	

	
}
