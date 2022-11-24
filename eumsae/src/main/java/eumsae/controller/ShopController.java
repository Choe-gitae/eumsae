package eumsae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import eumsae.model.LpVO;
import eumsae.service.CustomerService;
import eumsae.service.LpService;

@Controller
@RequestMapping(value = "/shop")
public class ShopController {

	@Autowired
	LpService lpService;
	
	@Autowired
	CustomerService cService;

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

	// LP 상세 페이지 정보 출력
	@RequestMapping(value = "/detail")
	public String detail(@RequestParam("infono") String infonoKey, Model m) {
		LpVO select = lpService.detail(infonoKey);
		m.addAttribute("select", select);
		return "/shop/product-details";
	}

	// 카트담기
	@RequestMapping(value = "/addToCart", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String addCart(CartVO vo, Model m) {
		String message = "카트에 정상적으로 담기지 않았습니다.";
		CartVO check = cService.searchCart(vo); // 상품 중복 검사
		if (check != null) {
			message = "중복된 상품입니다.";

		} else {
			int result = cService.addCart(vo); // 카트에 담기 실행
			if (result == 1) {
				message = vo.getId() + "님 카트에 상품이 추가되었습니다.";
				m.addAttribute("result", vo);
			}

		}

		return message;
	}

	// 결제 페이지로 이동
	@RequestMapping(value = "/checkOut")
	public String checkOut(String page, int lpno, String id, Model m) {
		CustomerVO cinfo = cService.selectById(id); // id 로 찾은 정보를 담은 CustomerVO 생성
		System.out.println(cinfo.toString());
		m.addAttribute("cinfo", cinfo); // 해당 정보 모델에 추가
		LpVO linfo = lpService.searchByLpno(lpno); // lp번호로 찾은 정보를 담은 LpVO 생성
		System.out.println(linfo.toString());
		m.addAttribute("linfo", linfo); // 해당 정보 모델에 추가
		return "/shop/" + page;
	}
}
