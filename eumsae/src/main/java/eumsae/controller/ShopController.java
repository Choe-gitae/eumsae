package eumsae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping(value = "/shop")
public class ShopController {
	
	// 선택한 URL 로 이동
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		return "/shop/" + url;
	}
	
	// 메인 페이지
	@RequestMapping(value = "/main")
	public String main() {
		return "/shop/main";
	}
	
	// 요청 게시판
	@RequestMapping(value = "/requestBoard")
	public String requestBoard() {
		return "/shop/requestBoard";
	}
	
	// LP상품페이지 LpVO리스트 리턴
	@RequestMapping(value = "/lpList")
	public String selectLpList() {
		return "/shop/lpList";
	}
	
}
