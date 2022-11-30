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
import jdk.internal.org.jline.utils.Log;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping(value = "/board")
@Slf4j
public class WishBoardController {

	@Autowired
	private WishBoardService service;
	
	
	// 선택한 url 로 이동
	@RequestMapping(value="/{url}")
	public String viewPage(@PathVariable String url) {
		return "/board/"+url;
	}
	
	//요청게시판에 글 목록 보이기 & 페이징
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
	@RequestMapping(value = "/requestBoardSave")
	public String requestBoardWrite(WishBoardVO vo, Model model) {
		service.insertBoard(vo);
		log.info("새 글 작성 => " + vo.getArticle());
			return "redirect:requestBoard";
		
	}
	
	
}
