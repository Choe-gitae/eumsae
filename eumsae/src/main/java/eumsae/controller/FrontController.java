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

	// 선택한 URL 로 이동
	@RequestMapping(value = "/{url}")
	public String frontPage(@PathVariable String url) {
		return "front/" + url;
	}

	// LP 정보 입력
	@RequestMapping(value = "/test")
	public String test(LpVO vo, Model m) {
		int result = lpinfoService.insertLpInfo(vo);
		// System.out.println(result + "행만큼 입력 완료");
		System.out.println(vo.toString());
		if (result == 1) {
			int result2 = lpscanService.insertLp(vo);
			if (result2 == 1) {
				m.addAttribute("result", vo);
				return "/front/insertSuccess";
			} else {
				return "/front/error";
			}
		} else {
			return "/front/error";
		}
	}

}
