package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
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
import org.apache.struts2.interceptor.SessionAware;

public class JoinMember extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	private static SqlMapClient sqlMapper;
	
	private MemberVO mvo = new MemberVO();
	private MemberVO paramClass;
	private MemberVO resultClass;
	
	private int no;
	private String id;
	private String password;
	private String passport;
	private String name;
	private String email;
	private int tel;
	private int admin;
	private Date regdate;
	private String marketing1;
	private String marketing2;
	
	private String confirmidcheck;
	private String confirmemail;
	
	private Map session;

	
	Calendar today=Calendar.getInstance();
	
	public JoinMember() throws Exception{
		reader=Resources.getResourceAsReader("sqlMapConfig.xml");// sqlMapConfig.xml 파일의 설정 내용을 가져온다
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성
		reader.close();
		
	}

	public String execute() throws Exception {
		return SUCCESS;
	}
	
	public String Join()throws Exception{//회원가입
		
		paramClass = new MemberVO();
	    resultClass = new MemberVO();

	    paramClass.setNo(getNo());
	    paramClass.setId(getId());
	    paramClass.setName(getName());
	    paramClass.setPassword(getPassword());
	    paramClass.setEmail(getEmail());
	    paramClass.setTel(getTel());
	    paramClass.setAdmin(getAdmin());
	    paramClass.setPassport(getPassport());
	    paramClass.setRegdate(today.getTime());
	    paramClass.setMarketing1(getMarketing1());
	    paramClass.setMarketing2(getMarketing2());
	    sqlMapper.insert("JoinMember", paramClass);

		return SUCCESS;
	}
	
	public String Email() throws Exception {//회원가입 이메일 인증
		HttpServletResponse response = ServletActionContext.getResponse();

		mvo.setEmail(email);

		//회원가입 정보 입력시 입력한 이메일과 동일한 이메일이 데이터베이스에 존재하는지 확인
		confirmemail = (String) sqlMapper.queryForObject("Email", mvo);

		if (confirmemail != null) {//동일한 이메일이 존재한다면 가입불가
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
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
				return new PasswordAuthentication("khiclass@gmail.com", "khacademy");//발신자 이메일과 비밀번호 입력
			}
		};

		Session session = Session.getDefaultInstance(props, auth);

		MimeMessage message = new MimeMessage(session);
		message.setSender(new InternetAddress("khiclass@gmail.com"));
		message.setSubject("회원가입 이메일 인증 메일입니다.");

		message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
		
		//회원가입폼에서 입력한 정보를 노출되지않게 a태그로 발송
		//여기를 누르면 해당 값이 가입로직으로 전달됨
		String confirmUrl = "<a href='http://localhost:8080/TMT/Join.action?email=" + email + "&id=" + id
				+ "&password=" + password + "&name=" + name + "" + "&tel=" + tel + "&passport=" + passport +"&marketing1="+marketing1+"&marketing2="+marketing2+ "&admin=5'>여기</a>를 누르시면 회원가입이 완료됩니다.";

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

	
	public MemberVO getMvo() {
		return mvo;
	}

	public void setMvo(MemberVO mvo) {
		this.mvo = mvo;
	}

	public String getConfirmidcheck() {
		return confirmidcheck;
	}

	public void setConfirmidcheck(String confirmidcheck) {
		this.confirmidcheck = confirmidcheck;
	}

	public String getConfirmemail() {
		return confirmemail;
	}

	public void setConfirmemail(String confirmemail) {
		this.confirmemail = confirmemail;
	}

	public String emailform() throws Exception{
		return SUCCESS;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public MemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(MemberVO paramClass) {
		this.paramClass = paramClass;
	}

	public MemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		JoinMember.sqlMapper = sqlMapper;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		JoinMember.reader = reader;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getMarketing1() {
		return marketing1;
	}

	public void setMarketing1(String marketing1) {
		this.marketing1 = marketing1;
	}

	public String getMarketing2() {
		return marketing2;
	}

	public void setMarketing2(String marketing2) {
		this.marketing2 = marketing2;
	}
	
	
	
	
	
}

