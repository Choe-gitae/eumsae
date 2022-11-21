package eumsae.service;

import java.util.HashMap;
import java.util.List;

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

	@Override
	public List<CustomerVO> selectCustomerVOList(HashMap map) {
		System.out.println("리스트 검색 서비스");
		return dao.selectCustomerVOList(map);
	}

}
