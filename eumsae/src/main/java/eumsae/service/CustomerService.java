package eumsae.service;

import eumsae.model.CustomerVO;

public interface CustomerService {
	// 회원가입
	public Integer insertCustomer(CustomerVO vo);
	
	// 아이디 중복 검사
	public CustomerVO idCheck(CustomerVO vo);
	
	// 로그인
	public CustomerVO login(CustomerVO vo);
	
}
