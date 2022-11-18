package eumsae.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import eumsae.model.CustomerVO;
import eumsae.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService service;
	
	// 회원가입
		@RequestMapping(value="register")
		 public String register(CustomerVO vo, Model m) {
			int result = service.insertCustomer(vo);
			String message = "가입이 이뤄지지 않았습니다.";
			if(result ==1) {
				message=vo.getId()+"님 가입을 축하합니다.";
				m.addAttribute("message", message);
				return "front/insertCustomer";
			}
			else {
				return "front/error";
			}
		}
		
	// id 중복 검사
	//--- utf-8 타입의 아이디를 사용할 수도 있으므로, ajax 및 controller에서 타입을 지정해준다.	
		@RequestMapping(value="idCheck", produces="application/text;charset=utf-8")
		@ResponseBody
		public String checkId(CustomerVO vo) {
			System.out.println("id 중복검사"+vo.getId());
			String message = "사용가능한 아이디입니다.";
			CustomerVO result = service.idCheck(vo);
			if(result != null) message="중복된 아이디입니다.";			
			return message;
		}
		

	// 로그인
		@RequestMapping(value="login")
		public String login(CustomerVO vo , HttpSession session) {
			CustomerVO result = service.login(vo);
			if(result == null || vo.getId() == null) {
				return "login";							// 입력된 아이디와 관련된 정보가 없으므로 다시 로그인 페이지로 보냄
			} else {
				session.setAttribute("login", vo.getId());	//세션에 vo의 아이디를 저장함				
				return "front/loginOk";
			}
			
			
		}
}
