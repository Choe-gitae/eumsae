package eumsae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/front")
public class FrontController {
	
	@RequestMapping(value = "/{url}")
	public String frontPage(@PathVariable String url) {
		return "front/"+url;
	}
	
	@RequestMapping(value = "/test")
	public String test() {
		return "/front/test";
	}
	
}
