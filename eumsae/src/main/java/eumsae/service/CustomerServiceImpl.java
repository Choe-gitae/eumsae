package eumsae.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.CustomerDAO;
import eumsae.model.CartVO;
import eumsae.model.CheckOutVO;
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

	@Override
	public Integer updateCustomer(CustomerVO vo) {
		System.out.println("회원 정보 수정 서비스");
		return dao.updateCustomer(vo);
	}

	@Override
	public Integer deleteCustomer(CustomerVO vo) {
		System.out.println("회원 삭제 서비스");
		return dao.deleteCustomer(vo);
	}

	//카드 담기
	@Override	
	public Integer addCart(CartVO vo) {
		System.out.println("카트담기 서비스");
		return dao.addCart(vo);
	}

	// 아이디로 회원 정보 검색
	@Override
	public CustomerVO selectById(String id) {
		System.out.println("회원 정보 검색 서비스");
		return dao.selectById(id);
	}

	@Override
	public List<CartVO> cartListById(String id) {
		System.out.println("카트 리스트 검색 서비스");
		return dao.cartListById(id);
	}

	@Override
	public CartVO searchCart(CartVO vo) {
		System.out.println("상품 중복 검색 서비스");
		return dao.searchCart(vo);
	}

	@Override
	public Integer deleteCart(CartVO vo) {
		System.out.println("카트 삭제 서비스");
		return dao.deleteCart(vo);
	}

	@Override
	public List<CheckOutVO> selectCheckOutList(CheckOutVO vo) {
		System.out.println("결제 리스트 반환 서비스");
		return dao.selectCheckOutList(vo);
	}

	@Override
	public Integer updateCart(CheckOutVO vo) {
		System.out.println("카트 수량 변경 서비스");
		return dao.updateCart(vo);
	}

}
