package eumsae.dao;

import eumsae.model.CustomerVO;

public interface CustomerDAO {
	// 회원 등록
	public Integer insertCustomer(CustomerVO vo);
	
<<<<<<< HEAD
	// 아이디 중복 확인
	public CustomerVO idCheck(CustomerVO vo);
	
=======
	// 아이디 중복확인
	public CustomerVO idCheck(CustomerVO vo);
>>>>>>> JH
	// 로그인
	public CustomerVO login(CustomerVO vo);
	
}
