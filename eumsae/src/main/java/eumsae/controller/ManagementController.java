package eumsae.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eumsae.model.LpVO;
import eumsae.model.MgrVO;
import eumsae.service.LpService;
import eumsae.service.MgrService;

@Controller
@RequestMapping(value = "/management")
public class ManagementController {		// 관리자 페이지 요청 관리 컨트롤러

	@Autowired
	private LpService service;	// LP 정보 관련 서비스

	@Autowired
	private MgrService mService;	// 매니저 정보 관련 서비스


	// 선택한 URL 로 이동
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		return "/management/" + url;
	}

	// 관리자 계정 관리 페이지 이동
	@RequestMapping(value = "/mgrManagemant")
	public String mgrManagemant() {
		return "/management/mgrManagemant";
	}

	// LP 정보 입력
	@RequestMapping(value = "/insertLp")							// LP 재고 등록 요청이 들어왔을 때
	public String insertLp(String page, LpVO vo, Model m) {			// 입력한 내용을 LpVO로 저장, 이후 모달로 뿌려줌
		service.insertLpInfo(vo);				// LPINFO TABLE 에 저장할 Service 실행
		service.insertLp(vo);					// LP TABLE 에 저장할 Service 실행
		m.addAttribute("check", "true");
		m.addAttribute("message", "등록 성공");	// 모달용 메세지
		return "/management/"+page;	// 등록페이지로 이동
	}	

	// 관리자 로그인
	@RequestMapping(value="/mgrLogin")
	public String mgrLogin(MgrVO vo, HttpSession sess) {
		System.out.println("로그인 확인");
		MgrVO result = mService.logIn(vo);
		if(result == null || vo.getMid() == null) {	// 로그인 정보가 없을 때
			return "/management/loginPage";		// 다시 로그인 하게 보냄
		} else {
			// 세션에 정보 저장
			sess.setAttribute("Mgr",result.getMid());
			sess.setAttribute("Name", result.getName());
			sess.setAttribute("Auth", result.getAuth());
			//System.out.println(sess.getAttribute("Name"));
			//System.out.println(sess.getAttribute("Auth"));
			return "redirect:/management/main";	//로그인 정보가 있을 때, 관리자 페이지로 이동		
		}
	}

	// 검색한 LP 정보 리턴
	@RequestMapping(value = "/searchLp")
	public String selectLpVOList(String page, String searchCon, String searchKey, Model model) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		List<LpVO> list = service.selectLpVOList(map);
		model.addAttribute("list", list);
		return "/management/"+page;
	}


	// 관리자 로그아웃	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String mgrLogOut(HttpServletRequest request) {
		System.out.println("관리자님 로그아웃");			
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/management/main";
	}

	// LP정보 삭제
	@RequestMapping(value = "/deleteLp")
	public String deleteLp(String page, LpVO vo, Model model) {
		service.deleteLp(vo);
		model.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
	}
	
	// LP 수정
	@RequestMapping(value = "/updateLp")
	public String updateLp(String page, LpVO vo, Model model) {
		System.out.println(vo.getInfono());
		service.updateLp(vo);
		model.addAttribute("check", "true");
		model.addAttribute("message", "수정되었습니다.");
		return "/management/"+page;
	}

}
