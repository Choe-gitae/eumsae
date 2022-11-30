package eumsae.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import eumsae.model.CartVO;
import eumsae.model.CustomerVO;
import eumsae.service.CustomerService;

@Controller
@RequestMapping(value = "/user")
public class CustomerController {

	@Autowired
	private CustomerService service;

	// 선택한 페이지로 이동
	/*****************************************************
	 * 함수명 : viewPage 역할 : 선택한 url 로 이동
	 * 
	 * @param url
	 * @return 해당 url 로 이동
	 * 
	 */
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		return "/user/" + url;
	}

	// 카트 이미지를 눌렀을 때 CartVO List 출력
	/*****************************************************
	 * 함수명 : cart 역할 : 회원 id 에 따른, 카트 리스트 반환
	 * 
	 * @param 회원 id
	 * @return List<CartVO> List
	 * 
	 */
	@RequestMapping(value = "/cart")
	public String cart(String id ,Model model) {
		List<CartVO> list = service.cartListById(id);		// CartVO list에 service 실행 결과를 받음
		model.addAttribute("list", list);	
		return "/user/cart";
	}

	// 회원가입
	/*****************************************************
	 * 함수명 : register 역할 : form 에 입력한 정보에 따라 회원 정보를 입력
	 * 
	 * @param CustomerVO
	 * @return 입력 결과
	 */
	@RequestMapping(value = "/register")
	public String register(CustomerVO vo, Model m) {
		int result = service.insertCustomer(vo);
		String message = "가입이 이뤄지지 않았습니다.";
		if (result == 1) {
			message = vo.getId() + "님 가입을 축하합니다.";
			m.addAttribute("message", message);
			return "/shop/main";
		} else {
			return "/user/login&RegisterPage";
		}
	}

	// id 중복 검사
	/*****************************************************
	 * 함수명 : checkId 역할 : 회원이 입력한 id 를 Database에 전달해 , 일치하는 정보가 있으면 1을 리턴함. 일치하는 결과가
	 * 있을경우, id 중복이라는 메세지를 전달. 일치하는 정보가 없는 경우, id 사용이 가능하다고 전달. 주의 사항 : ajax 통신 결과가
	 * utf-8 로 일치해야, 전달하는 메세지가 깨지지 않고 전달됨, 따라서, 통신하는 ajax 밑 controller 모두 utf-8
	 * type을 지정해야 한다.
	 * 
	 * @param CustomerVO
	 * @return 1 or 0
	 * 
	 */
	@RequestMapping(value = "/idCheck", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String checkId(CustomerVO vo) {
		String message = "사용가능한 아이디입니다.";
		CustomerVO result = service.idCheck(vo);
		if (result != null)
			message = "중복된 아이디입니다.";
		return message;
	}

	// 로그인
	/*****************************************************
	 * 함수명 : login 역할 : 회원이 입력한 id 와 pwd(비밀번호)를 전달해, 일치하는 결과가 있는 경우, 세션에 id를 저장하고,
	 * 메인 화면으로 보냄.
	 * 
	 * @param CustomerVO
	 * @return main 페이지 (세션에 로그인 id가 저장된)
	 * 
	 */
	@RequestMapping(value = "/login")
	public String login(CustomerVO vo, HttpSession session) {
		System.out.println("로그인 요청 확인");
		CustomerVO result = service.login(vo);
		if (vo.getId() == null | result == null) {
			return "/user/login&RegisterPage"; // 입력된 아이디와 관련된 정보가 없으므로 다시 로그인 페이지로 보냄
		} else {
			session.setAttribute("login", result.getId()); // 세션에 vo의 아이디를 저장함		
			return "redirect:/shop/main";	
		}

	}

	// 카트담기
	/*****************************************************
	 * 함수명 : addCart 역할 : 회원이 원하는 상품과 수량을 선택 후, Add to Cart 버튼을 눌렀을 때, ajax 통신 실행 *
	 * 
	 * @param CartVO
	 * @return 1 or 0
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="addCart", method=RequestMethod.POST)
	public String addCart(CartVO vo, Model m) {
		int result = service.addCart(vo);
		String message = "카트에 정상적으로 담기지 않았습니다.";
		if (result == 1) {
			message = vo.getId() + "님 카트에 상품이 추가되었습니다.";
		}
		return message;
	}

	// 로그아웃
	/*****************************************************
	 * 함수명 : LogOut 역할 : 유저가 log out 을 눌렀을 때, 세션을 초기화 시키고, 메인 화면으로 재전송함
	 * 
	 * @return : session 정보 초기화
	 * 
	 */
	@RequestMapping(value = "/logout")
	public String mgrLogOut(HttpSession session) {
		System.out.println("유저 로그아웃");		
		session.invalidate();
		return "redirect:/shop/main";
	}
	
	@ResponseBody
	@RequestMapping(value = "/findPw", produces = "application/text;charset=utf-8")
	public String findPw(CustomerVO vo) {
		String message = null;
		CustomerVO result = service.selectById(vo);
		if (result != null) {
			service.tempPw(result);
			message = result.getId() + "님의 이메일인" + result.getEmail() + "로 임시 비밀번호를 전송해 드렸습니다.";
			return message;
		} else {
			message = "일치하는 정보가 없습니다.";
			return message;
		}
	}

}
