package eumsae.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import eumsae.model.CartVO;
import eumsae.model.CartVOList;
import eumsae.model.CheckOutVO;
import eumsae.model.CheckOutVOList;
import eumsae.model.CustomerVO;
import eumsae.model.LpVO;
import eumsae.model.OrderVO;
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
	/*
	 * @RequestMapping(value = "/searchLp")
	 * public String selectLpVOList(String page, String searchCon, String searchKey,
	 * Model model) {
	 * HashMap map = new HashMap();
	 * map.put("searchCon", searchCon);
	 * map.put("searchKey", searchKey);
	 * List<LpVO> list = service.selectLpVOList(map);
	 * model.addAttribute("list", list);
	 * return "/management/"+page;
	 * }
	 */

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
	public String directCheckOut(CustomerVO vo, LpVO lpVO, Model m) {
		// System.out.println(lpVO);
		CustomerVO customerVO = cService.selectById(vo);
		m.addAttribute("cinfo", customerVO);
		// LpVO lpVO = lpService.searchByLpno(lpno);
		// m.addAttribute("linfo", lpVO);
		return "/shop/checkOutDirectly";
	}

	// 카트에 상품 선택 후 결제 페이지로 이동
	@RequestMapping(value = "/checkout")
	public String checkOut(Model m, String direct, CheckOutVOList checkOutVOList) {
		String id = null;
		CustomerVO cvo = new CustomerVO();

		// 즉시결제 체크
		if (direct.equals("false")) {
			for (CheckOutVO vo : checkOutVOList.getCheckOutVOList()) {
				if (vo.getId() != null) {
					id = vo.getId();
					cService.updateCart(vo);
				}
			}
		} else if (direct.equals("true")) {
			// 결제페이지에서 출력하기 위해 상태 true 세팅
			checkOutVOList.getCheckOutVOList().get(0).setState(true);
			id = checkOutVOList.getCheckOutVOList().get(0).getId();
		}

		cvo.setId(id);
		cvo = cService.selectById(cvo);
		m.addAttribute("cinfo", cvo);
		return "/shop/checkout";
	}

	/*****************************************************
	 * 결제 성공시 주문내역, 주문 상세내역 저장 및 결제한 상품정보 회원카트에서 삭제
	 * 
	 * @param OrderVO, CartVOList
	 * @return 없음
	 */
	@RequestMapping(value = "/paySuccess")
	public String paySuccess(OrderVO orderVO, CartVOList CartVOList) {
		// 주문내역 입력
		Integer orderNo = cService.insertOrder(orderVO);
		for (CartVO vo : CartVOList.getCartVOList()) {
			if (vo.getLpno() != 0) {
				HashMap<String, Integer> map = new HashMap<String, Integer>();
				// 받아온 주문번호를 맵에 삽입
				map.put("orderNo", orderNo);
				// 상품의 수량, LP번호 맵에 삽입
				map.put("amount", vo.getAmount());
				map.put("lpNo", vo.getLpno());
				// 주문 상세내역 입력
				cService.insertOrderList(map);
				// 카트에서 해당상품 삭제
				cService.deleteCart(vo);
			}
		}
		return "/shop/paySuccess";
	}

	/*****************************************************
	 * 슬라이드 LP 정보 리턴
	 * 최근 한달 안에 발매된 LP 슬라이드, 장르별로 많이 판매된 LP 슬라이드
	 * 
	 * @param 없음
	 * @return 가수, 제목
	 */
	@RequestMapping(value = "/main")
	public String mainCarousel(Model model) {
		List<LpVO> featuredNewReleases = lpService.selectFeaturedNewReleases();
		List<LpVO> genreBestSellers = lpService.selectGenreBestSellers();
		model.addAttribute("new", featuredNewReleases);
		model.addAttribute("best", genreBestSellers);
		return "/shop/main";
	}
}
