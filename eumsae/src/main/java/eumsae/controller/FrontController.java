package eumsae.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import eumsae.model.LpVO;
import eumsae.service.EumsaeService;

@Controller
public class EumsaeController {
	
	@Autowired
	EumsaeService eumsaeService;
	
	@RequestMapping(value = "getLpList.do")
	public String getLpList(LpVO vo, Model model) {
		model.addAttribute("lpList", eumsaeService.getLpList(vo));
		return "lplist";
	}
	
}
