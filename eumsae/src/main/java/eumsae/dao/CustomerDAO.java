package eumsae.dao;

import eumsae.model.CartVO;
import eumsae.model.CustomerVO;

public interface CustomerDAO {
	// 회원 등록
	public Integer insertCustomer(CustomerVO vo);
	
	// 아이디 중복확인
	public CustomerVO idCheck(CustomerVO vo);

	// 로그인
	public CustomerVO login(CustomerVO vo);
	
	//카트 담기
	public Integer addCart(CartVO vo);
	
}