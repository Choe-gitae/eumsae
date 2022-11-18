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
		
		return mybatis.insert("customer.insertCustomer",vo);
	}
	
	
}
