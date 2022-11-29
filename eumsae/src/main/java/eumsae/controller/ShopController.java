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

@Controller
@RequestMapping(value = "/shop")
public class ShopController {

	// 컨트롤러에서 필요로 하는 서비스들을 미리 Auto-Wiring 시킨다.
	
	@Autowired
	LpService lpService;

	@Autowired
	CustomerService cService;

	// 선택한 URL 로 이동
	/*****************************************************
	 * 
	 * 함수명 : viewPage
	 * 역할 : 선택한 url로 이동
	 * 
	 * 
	 * @param	url
	 * @return	선택한 page
	 * 
	 */
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		return "/shop/" + url;
	}

	// 메인 페이지
	/*****************************************************
	 * 
	 * 함수명 : main
	 * 역할 : 샵의 메인페이지로 이동
	 * 
	 * @param	없음
	 * @return	메인페이지
	 * 
	 */
	@RequestMapping(value = "/main")
	public String main() {
		return "/shop/main";
	}

	// 요청 게시판
	/*****************************************************
	 * 
	 * 함수명 : requestBoard
	 * 역할 : 샵의 요청사항 게시판으로 이동
	 * 
	 * 
	 * @param	없음 
	 * @return	요청사항게시판
	 * 
	 */
	@RequestMapping(value = "/requestBoard")
	public String requestBoard() {
		return "/shop/requestBoard";
	}

	// LP상품페이지 검색후 LpVO리스트 리턴
	/*****************************************************
	 * 
	 * 함수명 : searchLp
	 * 역할 : 회원이 입력한 검색 조건, 검색 키워드를 전달해, 일치하는 정보가 있는 경우 LpVO List 형태로 반환
	 * 
	 * 
	 * @param	SearchCon , SearchKey (검색조건과 검색 키워드)
	 * @return	LpVO List
	 * 
	 */
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
	/*****************************************************
	 * 
	 * 함수명 : selectBoard
	 * 역할 : 요청사항 게시판관리를 관리자가 클릭한 경우, 게시판에 입력되어 있는 모든 글을 가져옴. (이 때 글이 많으므로, 글을 정렬해줄 Pagination 실행)
	 * 
	 * 
	 * @param	PaginationVO
	 * @return	요청사항게시판
	 * 
	 */
	@RequestMapping(value="/detail")
	public String detail(@RequestParam("infono") String infonoKey, Model m) {
		LpVO select = lpService.detail(infonoKey);
		m.addAttribute("select", select);
		return "/shop/product-details";
	}

	// 카트담기
	/*****************************************************
	 * 
	 * 함수명 : addCart
	 * 역할 : 회원이 마음에 드는 Lp 를 카트에 담고자 할 때, aJax 통신을 이용해 중복된 상품 여부 확인 및 카트에 담는 서비스 실행
	 * 
	 * 
	 * @param	PaginationVO
	 * @return	요청사항게시판
	 * 
	 */
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
	/*****************************************************
	 * 
	 * 함수명 : deleteCart
	 * 역할 : 카트 창에서 X 버튼을 누르는 경우, ajax 통신에 의해 CartVO를 전달하고, 일치하는 CartVO가 있는 경우 해당하는 CartVO 삭제 
	 * 
	 * 
	 * @param	CartVO
	 * @return	message
	 * 
	 */
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
	/*****************************************************
	 * 
	 * 함수명 : directCheckOut
	 * 역할 : 제품 상세 페이지에서, 회원이 즉시 구매를 원해, checkout 버튼을 누른 경우, 구매를 희망하는 회원 정보와 LP 정보를 결제 페이지로 전송
	 * 
	 * 
	 * @param	id(회원) , lpno (엘피 번호)
	 * @return	CustomerVO, LpVO (각 아이디 및 lp번호와 일치하는)
	 * 
	 */
	@RequestMapping(value = "/directCheckOut")
	public String directCheckOut(String id,int lpno, Model m) {
		CustomerVO cvo = cService.selectById(id);
		m.addAttribute("cinfo",cvo);
		LpVO lvo = lpService.searchByLpno(lpno);
		m.addAttribute("linfo", lvo);		
		
		return "/shop/checkOutDirectly";
	}

	// 카트에 상품 선택 후 결제 페이지로 이동
	/*****************************************************
	 * 
	 * 	함수명 : checkOut
	 * 	역할 : 카트에 상품을 담은 이후, 원하는 상품들을 결제하고자 checkOut 버튼을 눌렀을 때, Cart 내 정보들을 전달함. 
	 * 
	 * 
	 * @param	CheckOutVO (회원정보, 엘피 정보를 모두 포함하고 있는 VO)
	 * @return	회원정보와 LP 정보를 모두 포함해 , 결제 페이지로 이동
	 * 
	 */
	@RequestMapping(value = "/checkout")
	public String checkOut(Model m, CheckOutVOList checkOutVOList) {

		for (CheckOutVO vo : checkOutVOList.getCheckOutVOList()) {
			cService.updateCart(vo);	// 회원이 카트에 담겨있는 제품의 수량을 변경한 경우, 최종 수량을 DataBase 에 할당함
			System.out.println(vo.toString());	// 카트 내용이 변경되어 넘어오는지 확인하고자 콘솔에 출력해봄
		}
		String id = checkOutVOList.getCheckOutVOList().get(1).getId();	// 배열에 있는 id를 획득해 변수에 할당
		// System.out.println(id);
		CustomerVO vo = cService.selectById(id);						// id 와 일치하는 회원정보를 가져오는 서비스 실행

		// System.out.println(vo.toString());
		m.addAttribute("cinfo", vo);
		return "/shop/checkout";
	}

	// 결제 성공시
	/*****************************************************
	 * 
	 * 함수명 : paySuccess
	 * 역할 : 회원이 상품의 최종결제를 마치고 난 후 , Cart Database에서 남아있던 Cart 정보들을 삭제하고, 새로이 주문내역 및 상세 주문내역을 Database에 입력함.
	 * 
	 * 
	 * @param	OrderVO , CheckOutVO
	 * @return	OrderVO 및 Cart Database 정보 삭제
	 * 
	 */
	@RequestMapping(value="/paySuccess")
	public String paySuccess(OrderVO orvo,CheckOutVOList checkOutVOList) {
		/*for(CheckOutVO vo : checkOutVOList.getCheckOutVOList()) {
			System.out.println(vo.getCartno());
			cService.deleteAllCart(vo);
		}*/	// 현재 카트 삭제 서비스 정상 작동이 되지 않아 임의로 주석처리 해두었음
		cService.insertOrder(orvo);
		cService.insertOrderList(orvo);
		return "/shop/main";
	}
	
	
}
