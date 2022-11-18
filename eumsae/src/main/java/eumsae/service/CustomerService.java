package eumsae.service;

import eumsae.model.CustomerVO;

public interface CustomerService {
	// 회원가입
	public Integer insertCustomer(CustomerVO vo);
	
}
