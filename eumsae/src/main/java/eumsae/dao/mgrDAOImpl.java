package eumsae.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.MgrVO;

@Repository
public class mgrDAOImpl implements mgrDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	// 매니저 등록
	@Override
	public Integer insertMgr(MgrVO vo) {
		System.out.println("mybatis insert 호출");
		return mybatis.insert("Mgr.insertMgr",vo);
	}

	// 로그인
	@Override
	public MgrVO logIn(MgrVO vo) {
		System.out.println("mybatis select 호출");
		return mybatis.selectOne("Mgr.logIn", vo);
	}

}
