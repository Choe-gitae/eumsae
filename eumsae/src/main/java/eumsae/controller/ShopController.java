package eumsae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("/shop")
public class ShopController {
	
	@RequestMapping("/lp-list")
	public String selectLpList() {
		return "/shop/lp-list";
	}
	
}
