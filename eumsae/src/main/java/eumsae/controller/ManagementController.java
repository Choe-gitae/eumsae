package eumsae.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import eumsae.model.LpVO;
import eumsae.service.lpinfoService;
import eumsae.service.lpscanService;

@Controller
@RequestMapping(value = "/management")
public class ManagementController {		// 관리자 페이지 요청 관리 컨트롤러
	
	@Autowired
	private lpinfoService lpinfoService;	// LP 정보 관련 서비스

	@Autowired
	private lpscanService lpscanService;	// LP 호출 관련 서비스
	
	// 선택한 URL 로 이동
		@RequestMapping(value = "/{url}")
		public String frontPage(@PathVariable String url) {
			return "management/" + url;
		}
	
	
	
	// LP 정보 입력
		@RequestMapping(value = "/insertLp")				// LP 재고 등록 요청이 들어왔을 때
		public String insertLp(LpVO vo, Model m) {			// 입력한 내용을 LpVO로 저장, 이후 모달로 뿌려줌
			int result = lpinfoService.insertLpInfo(vo);	// LPINFO TABLE 에 저장할 Service 실행
			if (result == 1) {								// LPINFO TABLE 에 입력이 있다면 
				int result2 = lpscanService.insertLp(vo);	// LP TABLE 에 저장할 Service 실행
				if (result2 == 1) {							// LP TABLE 에 값이 입력 되었다면
					m.addAttribute("result", vo);			// MODAL 에 LpVO를 저장해 전송
					return "/front/insertSuccess";			// insertSuccess로 이동
				} else {
					return "/front/error";					// 정보가 없는 경우 Error 페이지 로 이동 (LP)
				}
			} else {
				return "/front/error";						// 정보가 없는 경우 Error 페이지 로 이동 (Lpinfo)
			}
		}	
	
		
}
