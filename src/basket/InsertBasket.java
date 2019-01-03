package basket;

import com.opensymphony.xwork2.ActionSupport;

import member.MemberVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class InsertBasket extends ActionSupport implements SessionAware {

	private Reader reader;
	private SqlMapClient sqlMapper;

	private Map session;

	private List<BasketTVO> btlist = new ArrayList<BasketTVO>();
	private BasketTVO tvo = new BasketTVO();
	
	private List<BasketHVO> bhlist = new ArrayList<BasketHVO>();
	private BasketHVO hvo = new BasketHVO();
	
	private int no;
	private String name;
	private int price;
	private String country;
	private String region;
	private String image1;
	private String id;
	private String type;

	public InsertBasket() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	@Override
	public String execute() throws Exception {

		if (type.equals("0")) {// 투어&티켓
			
			tvo.setId(getId());
			tvo.setName(getName());
			tvo.setNo(getNo());
			tvo.setCountry(getCountry());
			tvo.setRegion(getRegion());
			tvo.setPrice(getPrice());
			tvo.setImage1(getImage1());
			
			sqlMapper.insert("insertbaskettour", tvo);
			
			/*btlist = sqlMapper.queryForList("selbaskettour", getId());*/
			

			return SUCCESS;
			
		} else if (type.equals("2")) {// 숙소

			hvo.setId(getId());
			hvo.setName(getName());
			hvo.setNo(getNo());
			hvo.setCountry(getCountry());
			hvo.setRegion(getRegion());
			hvo.setPrice(getPrice());
			hvo.setImage1(getImage1());
			
			sqlMapper.insert("insertbaskethotel", hvo);
			
			/*bhlist = sqlMapper.queryForList("selbaskethotel", getId());*/

			return SUCCESS;
		}

		return SUCCESS;

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

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public BasketHVO getHvo() {
		return hvo;
	}

	public void setHvo(BasketHVO hvo) {
		this.hvo = hvo;
	}

	public BasketTVO getTvo() {
		return tvo;
	}

	public void setTvo(BasketTVO tvo) {
		this.tvo = tvo;
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
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<BasketTVO> getBtlist() {
		return btlist;
	}

	public void setBtlist(List<BasketTVO> btlist) {
		this.btlist = btlist;
	}

	public List<BasketHVO> getBhlist() {
		return bhlist;
	}

	public void setBhlist(List<BasketHVO> bhlist) {
		this.bhlist = bhlist;
	}

	
}
