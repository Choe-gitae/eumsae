package eumsae.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.CustomerDAO;
import eumsae.model.CartVO;
import eumsae.model.CheckOutVO;
import eumsae.model.CustomerVO;
import eumsae.model.OrderVO;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO dao;

	// 회원가입 서비스
	@Override
	public Integer insertCustomer(CustomerVO vo) {
		System.out.println("회원 가입 서비스");
		return dao.insertCustomer(vo);
	}

	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("중복 아이디 확인 서비스");
		return dao.idCheck(vo);
	}

	@Override
	public CustomerVO login(CustomerVO vo) {
		System.out.println("로그인 서비스");
		return dao.idCheck(vo);
	}

	@Override
	public List<CustomerVO> selectCustomerVOList(HashMap map) {
		System.out.println("리스트 검색 서비스");
		return dao.selectCustomerVOList(map);
	}

	@Override
	public Integer updateCustomer(CustomerVO vo) {
		System.out.println("회원 정보 수정 서비스");
		return dao.updateCustomer(vo);
	}

	@Override
	public Integer deleteCustomer(CustomerVO vo) {
		System.out.println("회원 삭제 서비스");
		return dao.deleteCustomer(vo);
	}

	// 카드 담기
	@Override
	public Integer addCart(CartVO vo) {
		System.out.println("카트담기 서비스");
		return dao.addCart(vo);
	}

	// 아이디로 회원 정보 검색
	@Override
	public CustomerVO selectById(CustomerVO vo) {
		System.out.println("회원 정보 검색 서비스");
		return dao.selectById(vo);
	}

	@Override
	public List<CartVO> cartListById(String id) {
		System.out.println("카트 리스트 검색 서비스");
		return dao.cartListById(id);
	}

	@Override
	public CartVO searchCart(CartVO vo) {
		System.out.println("상품 중복 검색 서비스");
		return dao.searchCart(vo);
	}

	@Override
	public Integer deleteCart(CartVO vo) {
		System.out.println("카트 삭제 서비스");
		return dao.deleteCart(vo);
	}

	@Override
	public List<CheckOutVO> selectCheckOutList(CheckOutVO vo) {
		System.out.println("결제 리스트 반환 서비스");
		return dao.selectCheckOutList(vo);
	}

	@Override
	public Integer updateCart(CheckOutVO vo) {
		System.out.println("카트 수량 변경 서비스");
		return dao.updateCart(vo);
	}

	@Override
	public Integer deleteAllCart(CheckOutVO vo) {
		System.out.println("결제 후 카트 삭제 서비스");
		return dao.deleteAllCart(vo);
	}

	@Override
	public Integer insertOrder(OrderVO vo) {
		System.out.println("주문 내역 생성 서비스");
		return dao.insertOrder(vo);
	}

	@Override
	public Integer insertOrderList(HashMap<String, Integer> map) {
		System.out.println("주문 상세 내역 생성 서비스");
		return dao.insertOrderList(map);
	}

	@Override
	public Integer tempPw(CustomerVO vo) {
		String password = null;
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
			InternetAddress to = new InternetAddress(vo.getEmail());
			msg.setRecipient(Message.RecipientType.TO, to);
			// 이메일 제목
			msg.setSubject("EUMSAE 임시비밀번호", "UTF-8");
			// 이메일 내용
			String message = "안녕하세요 EUMSAE 입니다. 당신의 비밀번호는 아래와 같이 변경되었습니다. ";
			password = getTempPassword();
			message += password;

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

		vo.setPwd(password);
		System.out.println(vo);
		return dao.updateTempPw(vo);
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

	@Override
	public CustomerVO selectByTelAndName(CustomerVO vo) {
		return dao.selectByTelAndName(vo);
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
