package eumsae.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import eumsae.model.LpVO;
import eumsae.service.lpinfoService;
import eumsae.service.lpscanService;

@Controller
@RequestMapping(value = "/front")
public class FrontController {
	@Autowired
	private lpinfoService lpinfoService;
	
	@Autowired
	private lpscanService lpscanService;
	
	
	@RequestMapping(value = "/{url}")
	public String frontPage(@PathVariable String url) {
		return "front/"+url;
	}
	

	// 입력 요청이 들어왔을 때
	@RequestMapping(value="/lpinsert.do")
	public String lpinsert(LpVO vo , Model m) {
		System.out.println(vo.toString());
		int result = lpinfoService.insertLpInfo(vo);
		int result2 = lpscanService.insertLp(vo);		
	
		if(result ==1 & result2 ==1) {
		m.addAttribute("result", vo);
		return "/front/insertSuccess";
		} else {
			return "/front/error";
		}

	@RequestMapping(value = "/test")
	public String test() {
		return "/front/test";

	}
	
}
