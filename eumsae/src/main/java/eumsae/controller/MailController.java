package eumsae.controller;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {

	@RequestMapping(value="test")
	public String test() {
		Properties p = System.getProperties();
		p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
		p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 주소
		p.put("mail.smtp.auth","true");                 // gmail은 true 고정
		p.put("mail.smtp.port", "587");                 // 네이버 포트

		Authenticator auth = new MyAuthentication();
		//session 생성 및  MimeMessage생성
		Session session = Session.getDefaultInstance(p, auth);
		MimeMessage msg = new MimeMessage(session);

		try{
			//편지보낸시간
			msg.setSentDate(new Date());
			InternetAddress from = new InternetAddress() ;
			from = new InternetAddress("cgtcsg@naver.com"); //발신자 아이디
			// 이메일 발신자
			msg.setFrom(from);
			// 이메일 수신자
			InternetAddress to = new InternetAddress("skquddnr9709@naver.com");
			msg.setRecipient(Message.RecipientType.TO, to);
			// 이메일 제목
			msg.setSubject("EUMSAE 임시비밀번호", "UTF-8");
			// 이메일 내용
			String message = "안녕하세요 EUMSAE 입니다. 당신의 비밀번호는 아래와 같이 변경되었습니다. ";
			message += getTempPassword();

			msg.setText(message, "UTF-8");
			// 이메일 헤더
			msg.setHeader("content-Type", "text/html");
			//메일보내기
			javax.mail.Transport.send(msg, msg.getAllRecipients());

		}catch (AddressException addr_e) {
			addr_e.printStackTrace();
		}catch (MessagingException msg_e) {
			msg_e.printStackTrace();
		}catch (Exception msg_e) {
			msg_e.printStackTrace();
		}


		return"test";

	}

	public String getTempPassword(){
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

		String str = "";

		// 문자 배열 길이의 값을 랜덤으로 10개를 뽑아 구문을 작성함
		int idx = 0;
		for (int i = 0; i < 10; i++) {
			idx = (int) (charSet.length * Math.random());
			str += charSet[idx];
		}
		return str;
	}
}


class MyAuthentication extends Authenticator {

	PasswordAuthentication pa;
	public MyAuthentication(){

		String id = "cgtcsg@naver.com";       //네이버 이메일 아이디 ( 위에 발신자 이메일 )
		String pw = "gitae1234!";        //네이버 비밀번호

		// ID와 비밀번호를 입력한다.
		pa = new PasswordAuthentication(id, pw);
	}

	// 시스템에서 사용하는 인증정보
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}



