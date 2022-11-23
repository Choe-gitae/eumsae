package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.MgrVO;

@Repository
public class ManagementDAOImpl implements ManagementDAO {
	
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
	
	// 매니저리스트 반환
	@Override
	public List<MgrVO> selectMgrVOList(HashMap map) {
		System.out.println("매니저 리스트 반환");
		return mybatis.selectList("Mgr.searchMgr",map);
	}

	// 매니저 정보 수정
	@Override
	public Integer updateMgr(MgrVO vo) {
		System.out.println("매니저 정보 수정");
		return mybatis.update("Mgr.updateMgr", vo);
	}

	// 매니저 삭제
	@Override
	public Integer deleteMgr(MgrVO vo) {
		System.out.println("매니저 삭제");
		return mybatis.delete("Mgr.deleteMgr",vo);
	}

}
