package eumsae.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.CustomerDAO;
import eumsae.model.CartVO;
import eumsae.model.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO dao;
	
	

	
	//회원가입 서비스
	@Override
	public Integer insertCustomer(CustomerVO vo) {
		System.out.println("회원 가입 서비스");
		return dao.insertCustomer(vo);
	}

	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("중복 아이디 확인 서비스");
		return dao.idCheck(vo);
	}

	@Override
	public CustomerVO login(CustomerVO vo) {
		System.out.println("로그인 서비스");
		return dao.idCheck(vo);
	}

	//카드 담기
	@Override	
	public Integer addCart(CartVO vo) {
		System.out.println("카트담기 서비스");
		return dao.addCart(vo);
	}

}