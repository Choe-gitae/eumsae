package eumsae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/front")
public class FrontController {

	// 선택한 URL 로 이동
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		return "/front/" + url;
	}
	
	// LP 상세정보 조회 요청이 들어왔을때
	@RequestMapping(value = "detail")
	public void detail() {
		System.out.println("상세페이지 요청 확인");
		// 차후 작업해야 합미다
		
	}
	
}
