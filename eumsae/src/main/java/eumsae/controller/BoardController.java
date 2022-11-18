package eumsae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

	// 요청게시판
	@RequestMapping(value = "/requestBoard")
	public String requestBoard() {
		return "/board/requestBoard";
	}
	
	// 요청게시판 글쓰기
	@RequestMapping(value = "/requestBoardWrite")
	public String requestBoardWrite() {
		return "/board/requestBoardWrite";
	}
	
}
