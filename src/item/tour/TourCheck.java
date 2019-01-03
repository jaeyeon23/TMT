package item.tour;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class TourCheck extends ActionSupport implements SessionAware  {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private Map map = new HashMap<>();
	private Map session;
	
	private int no;            //상품 번호
	private String name;      //상품명    
	private int price;       //가격
	private String country;	 //국가
	private String region;	//지역
	private String image1; 
	
	
	public TourCheck() throws IOException {
		Charset charset = Charset.forName("UTF-8");
		Resources.setCharset(charset);
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

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

			
			//이미지
			public String getImage1() {
				return image1;
			}
			public void setImage1(String image1) {
				this.image1 = image1;
			}
			

}


