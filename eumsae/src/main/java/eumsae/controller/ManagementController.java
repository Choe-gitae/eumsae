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
	
	// 필요한 서비스들을 Spring이 자동으로 가져올 수 있도록 AutoWiring 시킨다.
	@Autowired
	private LpService service;	// LP 정보 관련 서비스

	@Autowired
	private MgrService mService;	// 매니지먼트 관련 서비스

	@Autowired
	private CustomerService cService; 	// 회원 관련 서비스
	
	@Autowired
	private WishBoardService wService; //게시판 서비스

	// 선택한 URL 로 이동
	/*****************************************************
	 * 	함수명 : viewPage
	 * 	역할	: 선택한 url 로 이동
	 * 
	 * @param url
	 * @return 선택한 url
	 * 
	 */
	@RequestMapping(value = "/{url}")
	public String viewPage(@PathVariable String url) {
		return "/management/" + url;
	}

	// 관리자 계정 관리 페이지 이동
	/*****************************************************
	 * 
	 * 	함수명 : mgrManagemant
	 * 	역할	: 관리자 계정관리 페이지로 이동
	 * 
	 * 
	 * @return mgrManagemant : 관리자 페이지
	 * 
	 */
	@RequestMapping(value = "/mgrManagemant")
	public String mgrManagemant() {
		return "/management/mgrManagemant";
	}
	
	// 관리자 로그인
	/*****************************************************
	 * 	함수명 : mgrLogin 
	 * 	역할 :  관리자가 입력한 id 와 pwd 를 넘겨받아, database로 전달해, 일치하는 정보가 있는경우, session에 정보를 저장하고, main 페이지로 이동.
	 * 
	 * @param MgrVO
	 * @return 1 or 0
	 * 
	 */
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
	
	// 관리자 로그인
	/*****************************************************
	 * 	함수명 : mgrLogOut 
	 * 	역할 :  관리자가 logOut을 눌렀을 때 세션 초기화 후, 다시 관리자 로그인 페이지로 이동
	 * 
	 * 
	 * @return management Login Page
	 * 
	 */
	@RequestMapping(value="/logout")
	public String mgrLogOut(HttpSession sess) {
		System.out.println("관리자님 로그아웃");			
		sess.invalidate();			
		return "/management/loginPage";
	}

	// LP 정보 입력
	/*****************************************************
	 * 	함수명 : insertLp 
	 * 	역할 : 관리자가 입력한 Lp 정보를 Database에 입력
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param LpVO
	 * 	@return LpVO
	 * 
	 */
	@RequestMapping(value = "/insertLp")							// LP 재고 등록 요청이 들어왔을 때
	public String insertLp(String page, LpVO vo, Model m) {			// 입력한 내용을 LpVO로 저장, 이후 모달로 뿌려줌
		service.insertLpInfo(vo);				// LPINFO TABLE 에 저장할 Service 실행
		service.insertLp(vo);					// LP TABLE 에 저장할 Service 실행
		m.addAttribute("check", "true");
		m.addAttribute("message", "등록 성공");	// 모달용 메세지
		return "/management/"+page;	// 등록페이지로 이동
	}	

	// 검색한 LP 정보 리턴
	/*****************************************************
	 * 	함수명 : selectLpVOList 
	 * 	역할 : 회원이 찾고자하는 Lp를 검색조건, 검색 단어를 입력했을 때, 이에 해당하는 결과를 LpVO List 형태로 반환해줌
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param SearchCon and SearchKey
	 * 	@return List<LpVO> List
	 * 
	 */
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
	/*****************************************************
	 * 	함수명 : deleteLp 
	 * 	역할 : 관리자가 Lp 삭제 버튼을 눌렀을 때, 해당하는 lp 정보 삭제
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param Lpinfono (현제 데이터베이스에서 사용하는 LP 정보 번호 - 고유값)
	 * 	@return Lp 정보 삭제
	 * 
	 */
	@RequestMapping(value = "/deleteLp")
	public String deleteLp(String page, LpVO vo, Model model) {
		service.deleteLp(vo);
		model.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
		
	}
	
	// LP 정보 수정
	/*****************************************************
	 * 	함수명 : updateLP 
	 * 	역할 : 관리자가 Lp 수정 버튼을 눌렀을 때, 관리자가 입력한 데로 Lp 정보가 수정됨.
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param LpVO
	 * 	@return LpVO
	 * 
	 */
	@RequestMapping(value = "/updateLp")
	public String updateLp(String page, LpVO vo, Model model) {
		service.updateLp(vo);
		model.addAttribute("message", "수정 되었습니다.");
		return "/management/"+page;
		
	}
	
	// 관리자 계정 추가
	/*****************************************************
	 * 	함수명 : registManager
	 * 	역할 : 관리자 계정을 새로이 등록하고자 할 때, 입력된 폼을 Database에 전달해 입력시킴
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param MgrVO
	 * 	@return 1 or 0
	 * 
	 */
	@RequestMapping(value="/registManager")
	public String registManager(MgrVO vo) {
		int result = mService.insertMgr(vo);
		if(result == 1) {							// 입력시킨 정보가 성공적으로 Database에 등록된 경우
			return "redirect:/management/main";
		} else {
			return "/management/mgrInsertPage";
		}
	}

	// 관리자 정보 검색시
	/*****************************************************
	 * 	함수명 : selectMgrVOList
	 * 	역할 : 검색조건, 검색하는 키워드를 넘겨받아 DATABASE 에 전달 후, 일치하는 정보가 있으면 이를  List 형태로 반환함.
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param MgrVO
	 * 	@return 1 or 0
	 * 
	 */
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
	/*****************************************************
	 * 	함수명 : updateMgr
	 * 	역할 : 관리자 계정을 새로이 등록하고자 할 때, 입력된 폼을 Database에 전달해 입력시킴
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param MgrVO
	 * 	@return 1 or 0
	 * 
	 */
	@RequestMapping(value="/updateMgr")
	public String updateMgr(String page, MgrVO vo, Model model) {
		mService.updateMgr(vo);
		model.addAttribute("message", "수정 되었습니다.");
		return "/management/"+page;
	}
	
	
	// 관리자 계정 삭제
	/*****************************************************
	 * 	함수명 : deleteMgr
	 * 	역할 : 관리자 계정을 삭제하고자 하는 경우 MgrVO를 Database로 보내, 일치하는 정보가 있을 경우, 그 정보 삭제
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨. 	
	 * 	
	 * 	@param MgrVO
	 * 	@return 1 or 0
	 * 
	 */
	@RequestMapping(value = "/deleteMgr")
	public String deleteMgr(String page, MgrVO vo, Model model) {
		mService.deleteMgr(vo);
		model.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
	}
	
	// 관리자가 직접 회원 등록
	/*****************************************************
	 * 	함수명 : registCustomer
	 * 	역할 : 관리자가 직접 회원을 등록하고자 하는 경우 form 에 입력된 데이터를 전달해 DataBase 에 입력함
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param CustomerVO
	 * 	@return 1 or 0
	 * 
	 */
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
	/*****************************************************
	 * 	함수명 : selectCustomerVOList
	 * 	역할 : 관리자가 회원 정보를 검색하고자, 검색조건, 검색 키워드를 입력한 경우, 해당하는 데이터들을 HashMap 형태로 저장해 DataBase에 전송하고, 이와 일치하는 정보가 있는경우 List 형태로 반환
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param SearchCon and SearchKey (검색 조건 및 검색 키워드)
	 * 	@return List<CustomerVO> List
	 * 
	 */
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
	/*****************************************************
	 * 	함수명 : updateCustomer
	 * 	역할 : 관리자가 회원 정보를 수정하고자 하는 경우, form 에 입력된 데이터를 전달해, Database 에 일치하는 id 가 있는 경우 해당 정보 수정
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param CustomerVO
	 * 	@return 1 or 0 (수정되는 경우 1 , 아닌 경우 0 으로 돌아옴)
	 * 
	 */
	@RequestMapping(value = "/updateCustomer")
	public String updateCustomer(String page, CustomerVO vo, Model m) {
		cService.updateCustomer(vo);		
		m.addAttribute("message", "수정 되었습니다.");
		return "/management/"+page;
	}
	
	// 회원 삭제
	/*****************************************************
	 * 	함수명 : selectCustomerVOList
	 * 	역할 : 관리자가 회원 정보를 검색하고자, 검색조건, 검색 키워드를 입력한 경우, 해당하는 데이터들을 HashMap 형태로 저장해 DataBase에 전송하고, 이와 일치하는 정보가 있는경우 List 형태로 반환
	 * 	관리자가 입력하는 정보 중 한글 , 영어가 혼용되어 사용됨
	 * 	
	 * 	@param SearchCon and SearchKey (검색 조건 및 검색 키워드)
	 * 	@return List<CustomerVO> List
	 * 
	 */
	@RequestMapping(value="/deleteCustomer")
	public String deleteCustomer(String page, CustomerVO vo, Model m) {
		cService.deleteCustomer(vo);
		m.addAttribute("message", "삭제 되었습니다.");
		return "/management/"+page;
	}
	
	// 요청사항 게시판
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
	/*****************************************************
	 * 
	 * 함수명 : updateBoard
	 * 역할 : 특정 게시글에, 관리자가 직접 댓글을 단 경우, 입력된 댓글을 전달해 Database에 입력시킴
	 * 
	 * 
	 * @param	WishBoardVO,PageNo
	 * @return	1 or 0 (수정이 완료된 경우 1 아닌 경우 0 으로 연결)
	 * 
	 */	
	@RequestMapping(value = "/updateBoard")
	public String updateBoard(WishBoardVO vo, String pageNo, Model model) {
		mService.updateComment(vo);
		
		// 목록&페이징
		if(pageNo == null) pageNo = "1";														 // 맨 처음 화면을 로딩했을 때, 페이지 번호가 설정되어 있지 않으므로, 페이지 번호를 1로 고정시켜줌.
		long totalRecord = wService.boardCount();												 // 전체 입력 정보를 할당받을 변수 설정
		PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 5, 5);	// 페이지별로 띄울 정보 양을 지정함.
		List<WishBoardVO> list = wService.selectWishBoardPg(pageVO);							// 페이징이 끝난 정보를 넘겨받을 WishBoardVO List 생성
		
		model.addAttribute("ccomment");
		model.addAttribute("list", list);
		model.addAttribute("pageVO", pageVO);
		return "/management/boardWishPage";
		
	}
	
	//댓글삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteBoard
	 * 역할 : 관리자가 특정 댓글을 삭제하고자 하는 경우, 해당하는 글과 관련된 글 번호를 찾아, 일치하는 경우 댓글 삭제
	 * 
	 * 
	 * @param	WishBoardVO , PageNo
	 * @return	1 or 0 (댓글이 삭제되는 경우 1, 없는 경우 0 으로 리턴)
	 * 
	 */
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
	
	// 전체 주문내역 반환
	/*****************************************************
	 * 
	 * 	함수명 : selectOrder
	 *  역할 : 관리자가 매출관리 페이지에서 주문내역을 선택한 경우, 주문내역을 List 형태로 반환해 해당 정보를 Pagination 실행 (주문 정보가 많으므로)
	 * 	@param	PaginationVO
	 * 	@return	전체 주문내역 리턴
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
	
	// 주문 내역 검색
	/*****************************************************
	 * 
	 *  함수명 : searchOrder
	 *  역할 : 관리자가 입력한 검색조건 및 검색키워드를 Database에 전달해 일치하는 경우 일치하는 주문내역 을 반환함
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
	
	// 주문 상세내역 리스트 검색
	/*****************************************************
	 * 
	 * 	함수명 : selectOrderList 
	 *  역할 : 주문 상세내역 조회 버튼 선택시, 해당하는 주문내역 전체가 담긴 List 반환
	 * 	전체 주문 상세내역 리스트로 리턴
	 * 	@param	PaginationVO
	 * 	@return	전체 주문 상세내역 리스트로 리턴
	 * 
	 * 
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
	
	// 주문 상세내역 검색
	/*****************************************************
	 * 
	 * 함수명 : searchOrderList
	 * 역할 : 관리자가 입력한 검색조건, 검색 키워드를 데이터베이스로 전달해 일치하는 주문내역을 리턴함
	 * 
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
	
	// 일 매출, 월 매출, 월별 매출 조회
	/*****************************************************
	 * 	함수명 : selectSales
	 * 	역할 : 관리자가 원하는 매출 조건을 선택시, 해당하는 조건에 맞는 매출 결과 리턴
	 * 	하루 매출, 최근 30일 매출, 월별 매출 리턴
	 * 	@param	없음
	 * 	@return	각 매출
	 */
	@RequestMapping(value = "/mgtSalesChartPage")
	public String selectSales(Model model) {
		mService.selectDaySales();
		return "/management/mgtSalesChartPage";
	}
}
