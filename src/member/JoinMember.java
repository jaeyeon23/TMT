package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

import javax.activation.CommandMap;
import javax.activation.MailcapCommandMap;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import com.opensymphony.xwork2.ActionSupport;

public class JoinMember extends ActionSupport{

	private static SqlMapClient sqlMapper;
	
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
	
	Calendar today=Calendar.getInstance();
	
	@Override
	public String execute() throws Exception {
		if(admin==5) {
			mvo.setId(id);
			mvo.setPassword(password);
			mvo.setEmail(email);
			mvo.setTel(tel);
			mvo.setAdmin(0);
			mvo.setRegdate(today.getTime());
			sqlMapper.insert("insertmember",mvo);
			
			sqlMapper.update("commit");
			//return SUCCESS;
		}
		//return ERROR;
		return SUCCESS;
	}
	public String comfirmId() throws Exception{
		mvo.setId(id);
		String confirmid=(String) sqlMapper.queryForObject("cofirmid",mvo);
		
		if(confirmid==null) {
			confirmidcheck="yes";
		}else {
			confirmidcheck="no";
		}
		return SUCCESS;
	}
	
	public String confirmEmail()throws Exception{
		HttpServletResponse response=ServletActionContext.getResponse();
		
		mvo.setEmail(email);
		
		confirmemail=(String)sqlMapper.queryForObject("confirmemail",mvo);
		if(confirmemail!=null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('동일한 이메일이 존재합니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return LOGIN;
		}
		//동일한 이메일이 없다면 회원가입인증용 메일 발송
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.debug", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.quitwait", "false");

		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("khtour8282@gmail.com", "");//발신자 이메일과 비밀번호 입력
			}
		};

		Session session = Session.getDefaultInstance(props, auth);

		MimeMessage message = new MimeMessage(session);
		message.setSender(new InternetAddress("khtour8282@gmail.com"));
		message.setSubject("회원가입 이메일 인증 메일입니다.");

		message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
		
		//회원가입폼에서 입력한 정보를 노출되지않게 a태그로 발송
		//여기를 누르면 해당 값이 가입로직으로 전달됨
		String confirmUrl = "<a href='http://localhost:8080/khtour/JoinMember.action?email=" + email + "&id=" + id
				+ "&password=" + password + "&name=" + name + "" + "&tel=" + tel + "&admin=5'>여기</a>를 누르시면 회원가입이 완료됩니다.";

		Multipart mp = new MimeMultipart();
		MimeBodyPart mbp1 = new MimeBodyPart();
		mbp1.setContent(confirmUrl, "text/html;charset=UTF-8");
		mp.addBodyPart(mbp1);

		MailcapCommandMap mc = (MailcapCommandMap) CommandMap.getDefaultCommandMap();
		mc.addMailcap("text/html;; x-java-content-handler=com.sun.mail.handlers.text_html");
		mc.addMailcap("text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml");
		mc.addMailcap("text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain");
		mc.addMailcap("multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed");
		mc.addMailcap("message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822");
		CommandMap.setDefaultCommandMap(mc);

		message.setContent(mp);

		Transport.send(message);

		return SUCCESS;
		
		
	}
	
	
}

