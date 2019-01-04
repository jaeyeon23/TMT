package basket;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class BasketList extends ActionSupport implements SessionAware {

	private Reader reader;
	private SqlMapClient sqlMapper;

	private List<BasketHVO> bhlist = new ArrayList<BasketHVO>();
	private BasketHVO hvo = new BasketHVO();

	private List<BasketTVO> btlist = new ArrayList<BasketTVO>();
	private BasketTVO tvo = new BasketTVO();

	private String id;
	private int no;
	private String image1;
	private String name;
	private String region;
	private String country;
	private int price;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private BasketpagingAction page;

	private int currentPage2 = 1;
	private int totalCount2;
	private int blockCount2 = 10;
	private int blockPage2 = 5;
	private String pagingHtml2;
	private BasketpagingAction2 page2;

	private Map session;

	public BasketList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	@Override
	public String execute() throws Exception {

		// 호텔
		hvo.setId((String) session.get("session_id"));

		bhlist = sqlMapper.queryForList("selecthbasket", hvo);

		totalCount = bhlist.size();

		if (currentPage == 0) {
			currentPage = 1;
		}
		
		if (currentPage2 == 0) {
			currentPage2 = 1;
		}
		
		page = new BasketpagingAction(currentPage, currentPage2, totalCount, blockCount, blockPage);
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		bhlist = bhlist.subList(page.getStartCount(), lastCount);

		// 투어
		tvo.setId((String) session.get("session_id"));

		btlist = sqlMapper.queryForList("selecttbasket", tvo);

		totalCount2 = btlist.size();

		
		page2 = new BasketpagingAction2(currentPage, currentPage2, totalCount2, blockCount2, blockPage2);
		pagingHtml2 = page2.getPagingHtml2().toString();

		int lastCount2 = totalCount2;

		if (page2.getEndCount2() < totalCount2)
			lastCount2 = page2.getEndCount2() + 1;

		btlist = btlist.subList(page2.getStartCount2(), lastCount2);

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

	public List<BasketHVO> getbhlist() {
		return bhlist;
	}

	public void setbhlist(List<BasketHVO> bhlist) {
		this.bhlist = bhlist;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public BasketpagingAction getPage() {
		return page;
	}

	public void setPage(BasketpagingAction page) {
		this.page = page;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
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

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public List<BasketHVO> getBhlist() {
		return bhlist;
	}

	public void setBhlist(List<BasketHVO> bhlist) {
		this.bhlist = bhlist;
	}

	public BasketHVO getHvo() {
		return hvo;
	}

	public void setHvo(BasketHVO hvo) {
		this.hvo = hvo;
	}

	public List<BasketTVO> getBtlist() {
		return btlist;
	}

	public void setBtlist(List<BasketTVO> btlist) {
		this.btlist = btlist;
	}

	public BasketTVO getTvo() {
		return tvo;
	}

	public void setTvo(BasketTVO tvo) {
		this.tvo = tvo;
	}

	public int getCurrentPage2() {
		return currentPage2;
	}

	public void setCurrentPage2(int currentPage2) {
		this.currentPage2 = currentPage2;
	}

	public int getTotalCount2() {
		return totalCount2;
	}

	public void setTotalCount2(int totalCount2) {
		this.totalCount2 = totalCount2;
	}

	public int getBlockCount2() {
		return blockCount2;
	}

	public void setBlockCount2(int blockCount2) {
		this.blockCount2 = blockCount2;
	}

	public int getBlockPage2() {
		return blockPage2;
	}

	public void setBlockPage2(int blockPage2) {
		this.blockPage2 = blockPage2;
	}

	public String getPagingHtml2() {
		return pagingHtml2;
	}

	public void setPagingHtml2(String pagingHtml2) {
		this.pagingHtml2 = pagingHtml2;
	}

	public BasketpagingAction2 getPage2() {
		return page2;
	}

	public void setPage2(BasketpagingAction2 page2) {
		this.page2 = page2;
	}

}