package member;

import java.io.IOException;
import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;

public class JoinMemberIdChk extends ActionSupport{

	private int no;
	private String id;
	private String password;
	private String password2;
	private String name;
	private String email;
	private int tel;
	private int admin;
	private Date regdate;
	
	private String confirmidcheck;
	private String confirmemail;
	
	private MemberVO mvo=new MemberVO();

	
	@Override
	public String execute() throws Exception {

		return SUCCESS;
	}

	
}
