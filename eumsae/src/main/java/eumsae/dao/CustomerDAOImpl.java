package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.CartVO;
import eumsae.model.CustomerVO;

@Repository
public class CustomerDAOImpl implements CustomerDAO{
	
	@Autowired
	SqlSession mybatis;
	
	
	// 회원가입
	@Override
	public Integer insertCustomer(CustomerVO vo) {
		System.out.println("회원 가입");
		return mybatis.insert("customer.insertCustomer",vo);
	}

	//id 중복 검사
	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("id 중복 확인");
		return mybatis.selectOne("customer.idCheck", vo);
	}

	// 로그인
	@Override
	public CustomerVO login(CustomerVO vo) {
		System.out.println("로그인");
		return mybatis.selectOne("customer.idCheck", vo);
	}
	// CustomerVO리스트 반환
	@Override
	public List<CustomerVO> selectCustomerVOList(HashMap map) {
		System.out.println("CustomerListVO 확인");
		return mybatis.selectList("customer.selectCustomer", map);
	}

	//회원 정보 수정
	@Override
	public Integer updateCustomer(CustomerVO vo) {
		System.out.println("회원 정보 수정");
		return mybatis.update("customer.updateCustomer", vo);
	}

	// 회원 삭제
	@Override
	public Integer deleteCustomer(CustomerVO vo) {
		System.out.println("회원 삭제");
		return mybatis.delete("customer.deleteCustomer",vo);
	}
	
	//카트 담기
	@Override
	public Integer addCart(CartVO vo) {
		System.out.println("카트담기 확인 : " + vo);
		return mybatis.insert("customer.addCart", vo);
		
	}
}
