package eumsae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;
import eumsae.service.WishBoardService;

@Controller
@RequestMapping(value = "/board")
public class WishBoardController {

	@Autowired
	private WishBoardService service;
	
	
	// 선택한 url 로 이동
	/*****************************************************
	 * 
	 * 함수명 : viewPage
	 * 역할 : 요청사항 게시판관리를 관리자가 클릭한 경우, 게시판에 입력되어 있는 모든 글을 가져옴. (이 때 글이 많으므로, 글을 정렬해줄 Pagination 실행)
	 * 
	 * 
	 * @param	url
	 * @return	선택한 페이지
	 * 
	 */
	@RequestMapping(value="/{url}")
	public String viewPage(@PathVariable String url) {
		return "/board/"+url;
	}
	
	//요청게시판에 글 목록 보이기 & 페이징
	/*****************************************************
	 * 
	 * 함수명 : selectWishBoardVOList
	 * 역할 : 회원이 Board 버튼을 눌렀을 때, WishBoardVO 의 List를 호출함. 이 때 정보 내용이 많으므로 회원이 볼 수 있는 정보의 양을 한정하는 Pagination 실행
	 * 
	 * 
	 * @param	없음 (Board 버튼을 눌렀을 때)
	 * @return	요청사항게시판
	 * 
	 */
	@RequestMapping(value = "/requestBoard")
	public String selectWishBoardVOList(String pageNo ,Model model) {
		if(pageNo == null) pageNo = "1";
		long totalRecord = service.boardCount();
		PaginationVO pageVO = new PaginationVO(Integer.parseInt(pageNo), totalRecord, 5, 5);
		List<WishBoardVO> list = service.selectWishBoardPg(pageVO);
		model.addAttribute("list", list);
		model.addAttribute("pageVO", pageVO);
		return "/board/requestBoard";
	}
	
	// 요청게시판 글쓰기
	/*****************************************************
	 * 
	 * 함수명 : requestBoardWrite
	 * 역할 : 사용자가 요청사항 게시판에 글을 작성할 수 있도록 해줌 (정해진 폼에 입력한 data를 WishBoardVO 형태로 전달해 Database에 입력시킴)
	 * 
	 * 
	 * @param	WishBoardVO
	 * @return	요청사항게시판 (글 입력 후 업데이트 된 게시판)
	 * 
	 */
	@RequestMapping(value = "/requestBoardSave")
	public String requestBoardWrite(WishBoardVO vo, Model model) {
		service.insertBoard(vo);
			return "redirect:requestBoard";
		
	}
	
	
}
