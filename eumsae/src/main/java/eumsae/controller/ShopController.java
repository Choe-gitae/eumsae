package eumsae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import eumsae.model.LpVO;
import eumsae.service.LpService;

@Controller()
@RequestMapping(value = "/shop")
public class ShopController {
	
	@Autowired
	LpService lpService;
	
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
	public String searchLp(@RequestParam("genre") String genreKey, Model model) {
		List<LpVO> list = lpService.genreLp(genreKey);
		model.addAttribute("list", list);
		return "/shop/lpList";
	}
	
	//LP 상세 페이지 정보 출력
	   @RequestMapping(value="/detail")
	   public String detail(@RequestParam("infono") String infonoKey, Model m) {
	         LpVO select = lpService.detail(infonoKey);         
	         m.addAttribute("select",select);            
	      return "/shop/product-details";
	   }
}
