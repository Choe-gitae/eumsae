package eumsae.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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


	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("id 중복 확인");
		return mybatis.selectOne("customer.idCheck", vo);
	}


	@Override
	public CustomerVO login(CustomerVO vo) {
		System.out.println("로그인");
		return mybatis.selectOne("customer.idCheck", vo);
	}
	
	
}
