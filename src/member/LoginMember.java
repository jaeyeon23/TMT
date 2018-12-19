package member;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;
import java.sql.Date;

import javax.servlet.http.HttpServletResponse;
import com.ibatis.common.resources.*;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import item.air.AirVO;
import item.hotel.HotelVO;
import item.tour.TourVO;
import basket.BasketVO;
import basket.InsertBasket;
import order.OrderVO;

public class LoginMember extends ActionSupport{

	private int no;
	private String id;
	private String password;
	private String password2;
	private String name;
	private String email;
	private int tel;
	private int admin;
	private Date regdate;

	@Override
	public String execute() throws Exception {

		return SUCCESS;
	}

	
}