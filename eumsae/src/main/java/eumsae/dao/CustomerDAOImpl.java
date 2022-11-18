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
<<<<<<< HEAD
		System.out.println("회원가입");
=======
		System.out.println("회원 가입");
>>>>>>> JH
		return mybatis.insert("customer.insertCustomer",vo);
	}


<<<<<<< HEAD
	// 아이디 중복 확인
	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("중복확인");
		return mybatis.selectOne("customer.idCheck", vo);
	}

	//로그인
=======
	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("id 중복 확인");
		return mybatis.selectOne("customer.idCheck", vo);
	}


>>>>>>> JH
	@Override
	public CustomerVO login(CustomerVO vo) {
		System.out.println("로그인");
		return mybatis.selectOne("customer.idCheck", vo);
	}
	
	
}
