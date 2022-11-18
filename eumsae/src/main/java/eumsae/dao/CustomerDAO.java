package eumsae.dao;

import eumsae.model.CustomerVO;

public interface CustomerDAO {
	// 회원 등록
	public Integer insertCustomer(CustomerVO vo);
	
	
}
