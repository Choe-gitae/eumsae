package eumsae.dao;

import eumsae.model.CustomerVO;

public interface CustomerDAO {
	// 회원 등록
	public Integer insertCustomer(CustomerVO vo);
	
	// 아이디 중복 확인
	public CustomerVO idCheck(CustomerVO vo);
	
	// 로그인
	public CustomerVO login(CustomerVO vo);
	
}
