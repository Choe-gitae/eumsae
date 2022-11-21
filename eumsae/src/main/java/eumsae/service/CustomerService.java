package eumsae.service;

import java.util.HashMap;
import java.util.List;

import eumsae.model.CustomerVO;

public interface CustomerService {
	// 회원가입
	public Integer insertCustomer(CustomerVO vo);

	// 아이디 중복확인
	public CustomerVO idCheck(CustomerVO vo);

	// 로그인
	public CustomerVO login(CustomerVO vo);
	
	// 회원정보 리스트로 반환
	public List<CustomerVO> selectCustomerVOList (HashMap map);

}
