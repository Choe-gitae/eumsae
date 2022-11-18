package eumsae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/front")
public class FrontController {

	// 선택한 URL 로 이동
	@RequestMapping(value = "/{url}")
	public String frontPage(@PathVariable String url) {
		return "front/" + url;
	}

}
