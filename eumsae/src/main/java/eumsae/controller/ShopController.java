package eumsae.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import eumsae.model.CartVO;
import eumsae.model.CheckOutVO;
import eumsae.model.CheckOutVOList;
import eumsae.model.CustomerVO;
import eumsae.model.LpVO;
import eumsae.model.OrderVO;
import eumsae.service.CustomerService;
import eumsae.service.LpService;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping(value = "/shop")
@Slf4j
public class ShopController {

	@Autowired
	LpService lpService;

	@Autowired
	CustomerService cService;

	// 선택한 URL 로 이동
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		log.info("선택한 URL로 이동");
		return "/shop/" + url;
	}

	// 메인 페이지
	@RequestMapping(value = "/main")
	public String main() {
		log.info("메인페이지로 이동");
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
		log.info("검색기록 : " + searchKey);
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
				log.info("카트담기");
				message = vo.getId() + "님 카트에 상품이 추가되었습니다.";
				m.addAttribute("result", vo);
			}

		}

		return message;
	}

	// 카트 삭제
	@RequestMapping(value = "/deleteCart", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String deleteCart(CartVO vo) {
		System.out.println(vo.getCartno());
		String message = "상품 취소 불가";
		int check = cService.deleteCart(vo);
		if (check == 1) {
			message = "상품 취소 완료";
		}
		return message;
	}

	// 결제 페이지로 이동 (즉시결제)
	@RequestMapping(value = "/directCheckOut")
	public String directCheckOut(String id,int lpno, Model m) {
		CustomerVO cvo = cService.selectById(id);
		m.addAttribute("cinfo",cvo);
		LpVO lvo = lpService.searchByLpno(lpno);
		m.addAttribute("linfo", lvo);		
		
		return "/shop/checkOutDirectly";
	}

	// 카트에 상품 선택 후 결제 페이지로 이동
	@RequestMapping(value = "/checkout")
	public String checkOut(Model m, CheckOutVOList checkOutVOList) {

		for (CheckOutVO vo : checkOutVOList.getCheckOutVOList()) {
			cService.updateCart(vo);
			System.out.println(vo.toString());
		}
		String id = checkOutVOList.getCheckOutVOList().get(1).getId();
		// System.out.println(id);
		CustomerVO vo = cService.selectById(id);

		 System.out.println(vo.toString());
		m.addAttribute("cinfo", vo);
		return "/shop/checkout2";
	}
	

	// 결제 성공시
	@RequestMapping(value="/paySuccess")
	public String paySuccess(OrderVO orvo,CheckOutVOList checkOutVOList) {
//		for(CheckOutVO vo : checkOutVOList.getCheckOutVOList()) {
//			System.out.println(vo.getCartno());
//			cService.deleteAllCart(vo);
//		}
		log.debug("test");
		cService.insertOrder(orvo);
		cService.insertOrderList(orvo);
		return "/shop/main";
	}
	
	
}
