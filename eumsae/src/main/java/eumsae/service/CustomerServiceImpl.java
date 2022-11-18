package eumsae.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.CustomerDAO;
import eumsae.model.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO dao;
	
	//회원가입 서비스
	@Override
	public Integer insertCustomer(CustomerVO vo) {
		
		return dao.insertCustomer(vo);
	}
	
	// 아이디 중복 검사
	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		
		return dao.idCheck(vo);
	}

	@Override
	public CustomerVO login(CustomerVO vo) {
		
		return dao.login(vo);
	}

}
