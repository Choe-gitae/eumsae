package eumsae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import eumsae.model.WishBoardVO;
import eumsae.service.WishBoardService;

@Controller
@RequestMapping(value = "/board")
public class WishBoardController {

	@Autowired
	private WishBoardService service;
	
//	// 요청게시판
//	@RequestMapping(value = "/requestBoard")
//	public String requestBoard() {
//		return "/board/requestBoard";
//	}
	
	// 선택한 url 로 이동
	@RequestMapping(value="/{url}")
	public String viewPage(@PathVariable String url) {
		return "/board/"+url;
	}
	
	//요청게시판에 글 목록 보이기
	@RequestMapping(value = "/requestBoard")
	public String selectWishBoardVOList(String boardKey, Model model) {
		List<WishBoardVO> list = service.selectWishBoardVOList(boardKey);
		model.addAttribute("boardList",list);
		return "/board/requestBoard";
	}
	
	// 요청게시판 글쓰기
	@RequestMapping(value = "/requestBoardSave")
	public String requestBoardWrite(WishBoardVO vo, Model model) {
		service.insertBoard(vo);
			return "redirect:requestBoard";
		
	}
	
}
