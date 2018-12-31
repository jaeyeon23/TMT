package order;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyOrder extends ActionSupport implements SessionAware{
	
	private Reader reader;
	private SqlMapClient sqlMapper;
	private Map session;
	
	private OrderVO oparamClass;
	private OrderVO oresultClass;

	private OrderVO ovo = new OrderVO();

	private int no;
	private String id;
	private String name;
	private String arv;
	private String dep;
	private String image1;
	private int price;
	private Date day;
	private Date dd;
	private Date ad;
	private String checkin;
	private String checkout;
	private String region;
	private String country;
	private int type;
	
	
	public ModifyOrder() throws IOException{
		
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();

	}

	
	@Override
	public String execute() throws Exception {
		
		oparamClass = new OrderVO();
		oresultClass = new OrderVO();
		
		oresultClass = (OrderVO) sqlMapper.queryForObject("selectOne", getId());
		
		oparamClass.setNo(getNo());
		oparamClass.setName(getName());
		oparamClass.setArv(getArv());
		oparamClass.setDep(getDep());
		oparamClass.setImage1(getImage1());
		oparamClass.setPrice(getPrice());
		oparamClass.setDay(getDay());
		oparamClass.setDd(getDd());
		oparamClass.setCheckin(getCheckin());
		oparamClass.setCheckout(getCheckout());
		oparamClass.setRegion(getRegion());
		oparamClass.setCountry(getCountry());
		
		
		sqlMapper.update("ModifyOrder", oparamClass);
		
		return SUCCESS;
	}
	
	


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Reader getReader() {
		return reader;
	}


	public void setReader(Reader reader) {
		this.reader = reader;
	}


	public SqlMapClient getSqlMapper() {
		return sqlMapper;
	}


	public void setSqlMapper(SqlMapClient sqlMapper) {
		this.sqlMapper = sqlMapper;
	}


	public OrderVO getOparamClass() {
		return oparamClass;
	}


	public void setOparamClass(OrderVO oparamClass) {
		this.oparamClass = oparamClass;
	}


	public OrderVO getOresultClass() {
		return oresultClass;
	}


	public void setOresultClass(OrderVO oresultClass) {
		this.oresultClass = oresultClass;
	}


	public OrderVO getOvo() {
		return ovo;
	}


	public void setOvo(OrderVO ovo) {
		this.ovo = ovo;
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


	public String getImage1() {
		return image1;
	}


	public void setImage1(String image1) {
		this.image1 = image1;
	}


	

	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public Date getDay() {
		return day;
	}


	public void setDay(Date day) {
		this.day = day;
	}


	public Date getDd() {
		return dd;
	}


	public void setDd(Date dd) {
		this.dd = dd;
	}


	public Date getAd() {
		return ad;
	}


	public void setAd(Date ad) {
		this.ad = ad;
	}


	


	public String getCheckin() {
		return checkin;
	}


	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}


	public String getCheckout() {
		return checkout;
	}


	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}


	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}
	public Map getSession() {
	      return session;
	   }

	public void setSession(Map session) {
	      this.session = session;
	   }
	
	


}
