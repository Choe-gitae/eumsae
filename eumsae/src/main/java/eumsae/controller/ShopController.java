package eumsae.controller;

import java.util.HashMap;
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

	// LP상품페이지 검색후 LpVO리스트 리턴
	@RequestMapping(value = "/searchLp")
	public String searchLp(String searchCon, String searchKey, Model model) {
		System.out.println(searchCon);
		System.out.println(searchKey);
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		System.out.println(map.get("searchKey"));
		List<LpVO> list = lpService.searchLp(map);
		model.addAttribute("list", list);
		System.out.println(list);
		return "/shop/lpList";
	}
	
	// // 검색한 LP 정보 (제목별, 가수별) 리턴
	/*@RequestMapping(value = "/searchLp")
	public String selectLpVOList(String page, String searchCon, String searchKey, Model model) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		List<LpVO> list = service.selectLpVOList(map);
		model.addAttribute("list", list);
		return "/management/"+page;
	}*/

	//LP 상세 페이지 정보 출력
	@RequestMapping(value="/detail")
	public String detail(@RequestParam("infono") String infonoKey, Model m) {
		LpVO select = lpService.detail(infonoKey);         
		m.addAttribute("select",select);            
		return "/shop/product-details";
	}
}
