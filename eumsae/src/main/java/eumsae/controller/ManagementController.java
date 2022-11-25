package eumsae.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eumsae.model.CustomerVO;
import eumsae.model.LpVO;
import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;
import eumsae.service.CustomerService;
import eumsae.service.LpService;
import eumsae.service.MgrService;
import eumsae.service.WishBoardService;

@Controller
@RequestMapping(value = "/management")
public class ManagementController {		// 관리자 페이지 요청 관리 컨트롤러

	@Autowired
	private LpService service;	// LP 정보 관련 서비스

	@Autowired
	private MgrService mService;	// 매니지먼트 관련 서비스

	@Autowired
	private CustomerService cService; 	// 회원 관련 서비스
	
	@Autowired
	private WishBoardService wService; //게시판 서비스

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
	
	// 관리자 로그인
	@RequestMapping(value="/mgrLogin")						// 관리자 로그인 정보가 들어왔을 때
	public String mgrLogin(MgrVO vo, HttpSession sess) {
		System.out.println("로그인 확인");
		MgrVO result = mService.logIn(vo); // 서비스 내 LogIn service 실행		
		if (result == null || vo.getMid() == null) { // 로그인 정보가 없을 때
			return "/management/loginPage"; // 다시 로그인 하게 보냄
		} else {
			// 세션에 정보 저장
			sess.setAttribute("Mgr", result.getMid());
			sess.setAttribute("Name", result.getName());
			sess.setAttribute("Auth", result.getAuth());
			return "redirect:/management/main"; //로그인 정보가 있을 때, 관리자 페이지로 이동		
		}
	}
	
	// 관리자 로그아웃	
	@RequestMapping(value="/logout")
	public String mgrLogOut(HttpSession sess) {
		System.out.println("관리자님 로그아웃");			
		sess.invalidate();			
		return "/management/loginPage";
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

	// 검색한 LP 정보 리턴
	@RequestMapping(value = "/searchLp")
	public String selectLpVOList(String page, String searchCon, String searchKey, Model model) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		System.out.println(map.get("searchCon"));
		System.out.println(map.get("searchKey"));
		List<LpVO> list = service.selectLpVOList(map);
		model.addAttribute("list", list);
		return "/management/"+page;
	}
	
	// LP정보 삭제
	@RequestMapping(value = "/deleteLp")
	public String deleteLp(String page, LpVO vo, Model model) {
		service.deleteLp(vo);
		model.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
		
	}
	
	// LP 정보 수정
	@RequestMapping(value = "/updateLp")
	public String updateLp(String page, LpVO vo, Model model) {
		service.updateLp(vo);
		model.addAttribute("message", "수정 되었습니다.");
		return "/management/"+page;
		
	}
	
	// 관리자 계정 추가
	@RequestMapping(value="/registManager")
	public String registManager(MgrVO vo) {
		int result = mService.insertMgr(vo);
		if(result == 1) {
			return "redirect:/management/main";
		} else {
			return "/management/mgrInsertPage";
		}
	}

	// 관리자 정보 검색시
	@RequestMapping(value = "/searchMgr")
	public String selectMgrVOList(String page, String searchCon, String searchKey, Model model) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		List<MgrVO> list = mService.selectMgrVOList(map);
		model.addAttribute("list", list);
		return "/management/" + page;
	}
	
	// 관리자 정보 수정
	@RequestMapping(value="/updateMgr")
	public String updateMgr(String page, MgrVO vo, Model model) {
		mService.updateMgr(vo);
		model.addAttribute("message", "수정 되었습니다.");
		return "/management/"+page;
	}
	
	
	// 관리자 계정 삭제
	@RequestMapping(value = "/deleteMgr")
	public String deleteMgr(String page, MgrVO vo, Model model) {
		mService.deleteMgr(vo);
		model.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
	}
	
	// 관리자가 직접 회원 등록
	@RequestMapping(value = "/registCustomer")
	public String registCustomer(CustomerVO vo) {
		int result = cService.insertCustomer(vo);
		if (result == 1) {
			return "redirect:/management/main";
		} else {				   
			return "/management/userInsertPage";
		}
	}

	// 관리자가 회원 정보를 검색 시
	@RequestMapping(value = "/searchCustomer")
	public String selectCustomerVOList(String page, String searchCon, String searchKey, Model model) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		List<CustomerVO> list = cService.selectCustomerVOList(map);
		model.addAttribute("list", list);
		return "/management/" + page;
	}

	// 회원 정보 수정
	@RequestMapping(value = "/updateCustomer")
	public String updateCustomer(String page, CustomerVO vo, Model m) {
		cService.updateCustomer(vo);		
		m.addAttribute("message", "수정 되었습니다.");
		return "/management/"+page;
	}
	
	// 회원 삭제
	@RequestMapping(value="/deleteCustomer")
	public String deleteCustomer(String page, CustomerVO vo, Model m) {
		cService.deleteCustomer(vo);
		m.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
	}
	
	
	/*****************************************************
	 * 요청사항게시판
	 * @param	PaginationVO
	 * @return	요청사항게시판
	 */
	@RequestMapping(value = "/boardWishPage")
	public String selectBoard(String pageNo, Model model) {
		
		// 목록&페이징
		if(pageNo == null) pageNo = "1";
		long totalRecord = wService.boardCount();
		PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 5, 5);
		List<WishBoardVO> list = wService.selectWishBoardPg(pageVO);
		
		model.addAttribute("ccomment");
		model.addAttribute("list", list);
		model.addAttribute("pageVO", pageVO);
		return "/management/boardWishPage";
	}
	//댓글등록
	@RequestMapping(value = "/updateBoard")
	public String updateBoard(WishBoardVO vo, String pageNo, Model model) {
		mService.updateComment(vo);
		
		// 목록&페이징
		if(pageNo == null) pageNo = "1";
		long totalRecord = wService.boardCount();
		PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 5, 5);
		List<WishBoardVO> list = wService.selectWishBoardPg(pageVO);
		
		model.addAttribute("ccomment");
		model.addAttribute("list", list);
		model.addAttribute("pageVO", pageVO);
		return "/management/boardWishPage";
		
	}
	//댓글삭제
	@RequestMapping(value = "/deleteBoard")
	public String deleteBoard(WishBoardVO vo, String pageNo, Model model) {
		mService.deleteComment(vo);
		
		// 목록&페이징
				if(pageNo == null) pageNo = "1";
				long totalRecord = wService.boardCount();
				PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 5, 5);
				List<WishBoardVO> list = wService.selectWishBoardPg(pageVO);
				
				model.addAttribute("ccomment");
				model.addAttribute("list", list);
				model.addAttribute("pageVO", pageVO);
		
		return "/management/boardWishPage";
	}
	
	
	/*****************************************************
	 * 전체 주문내역 리스트형태로 리턴
	 * @param	PaginationVO
	 * @return	전체 주문내역 리턴
	 */
	@RequestMapping(value = "/mgtSalesPage")
	public String selectOrder(String pageNo, Model model) {
		if(pageNo == null) pageNo = "1";
		long totalRecord = mService.selectOrderCount();
		PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 10, 10);
		List<OrderVO> list = mService.selectOrder(pageVO);
		model.addAttribute("list", list);
		model.addAttribute("pageVO", pageVO);
		return "/management/mgtSalesPage";
	}
	
	
	/*****************************************************
	 * 주문내역 검색
	 * @param	검색할 옵션, 검색할 키
	 * @return	검색한 주문내역 리스트로 리턴
	 */
	@RequestMapping(value = "/searchOrder")
	public String searchOrder(String searchCon, String searchKey, Model model) {
		System.out.println(searchCon);
		System.out.println(searchKey);
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		List<OrderVO> list = mService.searchOrder(map);
		model.addAttribute("list", list);
		return "/management/mgtSalesPage";
	}
	
	
	/*****************************************************
	 * 전체 주문 상세내역 리스트로 리턴
	 * @param	PaginationVO
	 * @return	전체 주문 상세내역 리스트로 리턴
	 */
	@RequestMapping(value = "/mgtSalesListPage")
	public String selectOrderList(String pageNo, Model model) {
	if(pageNo == null) pageNo = "1";
	long totalRecord = mService.selectOrderListCount();
	PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 10, 10);
	List<OrderVO> list = mService.selectOrderList(pageVO);
	model.addAttribute("list", list);
	model.addAttribute("pageVO", pageVO);
	return "/management/mgtSalesListPage";
	}
	
	
	/*****************************************************
	 * 주문 상세내역 검색
	 * @param	검색할 옵션, 검색할 키
	 * @return	검색한 주문 상세내역 리스트로 리턴
	 */
	@RequestMapping(value = "/searchOrderList")
	public String searchOrderList(String searchCon, String searchKey, Model model) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		List<OrderVO> list = mService.searchOrderList(map);
		model.addAttribute("list", list);
		return "/management/mgtSalesListPage";
	}
	
	
	/*****************************************************
	 * 하루 매출, 최근 30일 매출, 월별 매출 리턴
	 * @param	없음
	 * @return	각 매출
	 */
	@RequestMapping(value = "/mgtSalesChartPage")
	public String selectSales(Model model) {
		mService.selectDaySales();
		return "/management/mgtSalesChartPage";
	}
}
