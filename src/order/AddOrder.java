package order;


import item.air.AirVO;
import item.hotel.HotelVO;
import item.tour.TourVO;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class AddOrder implements SessionAware {
	
	private Map session;
	
	OrderVO ovo = new OrderVO();

	TourVO tvo = new TourVO();
	HotelVO hvo = new HotelVO();
	AirVO avo = new AirVO();

	public OrderVO tourOrder(TourVO tvo) {
		ovo.setSeq_no(tvo.getNo());
		ovo.setName(tvo.getName());
		ovo.setPrice(tvo.getPrice());
		ovo.setCountry(tvo.getCountry());
		ovo.setRegion(tvo.getRegion());
		ovo.setImage1(tvo.getImage1());
	
		return ovo;

	}

	public OrderVO hotelOrder(HotelVO hvo){
		ovo.setSeq_no(hvo.getNo());
		ovo.setName(hvo.getName());
		ovo.setPrice(hvo.getPrice());
		ovo.setCountry(hvo.getCountry());
		ovo.setRegion(hvo.getRegion());
/*		ovo.setImage1(hvo.getImage1());*/
		ovo.setCheckin(hvo.getCheckin());
		ovo.setCheckout(hvo.getCheckout());
		
		return ovo;
	}
	
	
	public OrderVO airOrder(AirVO avo){
		ovo.setNo(avo.getNo());
		ovo.setArv(avo.getArv());
		ovo.setDep(avo.getDep());
		ovo.setPrice(avo.getPrice());
		ovo.setImage1(avo.getImage1());
		ovo.setAd(avo.getAd());
		ovo.setDd(avo.getDd());

		return ovo;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}


}
