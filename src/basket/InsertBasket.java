package basket;


import item.air.AirVO;
import item.hotel.HotelVO;
import item.tour.TourVO;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class InsertBasket implements SessionAware{
	
	private Map session;
	BasketVO bvo = new BasketVO();

	TourVO tvo = new TourVO();
	HotelVO hvo = new HotelVO();
	AirVO avo = new AirVO();

	public BasketVO tourBasket(TourVO tvo) {
		bvo.setSeq_no(tvo.getNo());
		bvo.setName(tvo.getName());
		bvo.setPrice(tvo.getPrice());
		bvo.setContent(tvo.getContent());
		bvo.setCountry(tvo.getCountry());
		bvo.setRegion(tvo.getRegion());
		bvo.setImage1(tvo.getImage1());
		bvo.setImage2(tvo.getImage2());
		bvo.setImage3(tvo.getImage3());

		return bvo;

	}

	public BasketVO hotelBasket(HotelVO hvo){
		bvo.setSeq_no(hvo.getNo());
		bvo.setName(hvo.getName());
		bvo.setPrice(hvo.getPrice());
		bvo.setContent(hvo.getContent());
		bvo.setCountry(hvo.getCountry());
		bvo.setRegion(hvo.getRegion());
/*		bvo.setImage1(hvo.getImage1());
		bvo.setImage2(hvo.getImage2());*/
		bvo.setImage3(hvo.getImage3());
		bvo.setCheckin(hvo.getCheckin());
		bvo.setCheckout(hvo.getCheckout());
		
		return bvo;
	}
	
	
	public BasketVO airBasket(AirVO avo){
		bvo.setSeq_no(avo.getNo());
		bvo.setArv(avo.getArv());
		bvo.setDep(avo.getDep());
		bvo.setPrice(avo.getPrice());
		bvo.setContent(avo.getContent());
		bvo.setImage1(avo.getImage1());
		bvo.setGrade(avo.getGrade());
		bvo.setAd(avo.getAd());
		bvo.setDd(avo.getDd());
		bvo.setSeat(avo.getSeat());
		bvo.setAir_company(avo.getAir_company());

		return bvo;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}


}
