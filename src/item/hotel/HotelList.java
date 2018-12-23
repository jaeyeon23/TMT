package item.hotel;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient; 
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import item.hotel.HotelpagingAction;

public class HotelList extends ActionSupport {

	public static Reader reader; // ���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper; // SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private List<HotelVO> Hotellist = new ArrayList<HotelVO>();
	
	private String hotelname;
	private int number;
	private Date inDay, outDay;
	
	// private HotelVO hvo = new HotelVO();
	
//	private int num = 0;

	private int currentPage = 1; // ���� ������
	private int totalCount; // �� �Խù��� ��
	private int blockCount = 5; // �� �������� �Խù��� ��
	private int blockPage = 5; // �� ȭ�鿡 ������ ������ ��
	private String pagingHtml; // ����¡�� ������ HTML
	private HotelpagingAction page; // ����¡ Ŭ����

	// ������
	public HotelList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}

	// �Խ��� ����Ʈ �׼�
	public String execute() throws Exception {
		
		if(getHotelname() != null) {
			return search();
		}
		// ��� ���� ������ ȣ�� ����Ʈ�� ����
		Hotellist = sqlMapper.queryForList("selectAllH");

		totalCount = Hotellist.size(); // ��ü �Խñ��� ��

		// HotelpagingAction ��ü ����.
		page = new HotelpagingAction(currentPage, totalCount, blockCount, blockPage, "");
		pagingHtml = page.getPagingHtml().toString();

		// ���� ���������� ������ ������ ���� ��ȣ ����.
		int lastCount = totalCount;
		// lastCount�� +1 ��ȣ�� ����.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
		Hotellist = Hotellist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	public String search() throws Exception{
		
		// �˻� ���� ������ ȣ�� ����Ʈ�� ����
		Hotellist = sqlMapper.queryForList("Search_Hotel","%"+getHotelname()+"%");
		
		totalCount = Hotellist.size(); // ��ü �Խñ��� ��

		// HotelpagingAction ��ü ����.
		page = new HotelpagingAction(currentPage, totalCount, blockCount, blockPage, getHotelname());
		pagingHtml = page.getPagingHtml().toString();

		// ���� ���������� ������ ������ ���� ��ȣ ����.
		int lastCount = totalCount;
		// lastCount�� +1 ��ȣ�� ����.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
		Hotellist = Hotellist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}
	
	public List<HotelVO> getHotellist() {
		return Hotellist;
	}

	public void setHotellist(List<HotelVO> hotellist) {
		Hotellist = hotellist;
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

	public HotelpagingAction getPage() {
		return page;
	}
	public void setPage(HotelpagingAction page) {
		this.page = page;
	}
	
	/*�˻����� */
	//���Ұ˻�
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	//�����ο�
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	//üũ�� , üũ�ƿ�
	public Date getInDay() {
		return inDay;
	}
	public void setInDay(Date inDay) {
		this.inDay = inDay;
	}
	public Date getOutDay() {
		return outDay;
	}
	public void setOutDay(Date outDay) {
		this.outDay = outDay;
	}
}
	
	