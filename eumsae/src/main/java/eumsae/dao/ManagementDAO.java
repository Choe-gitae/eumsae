package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import eumsae.model.MgrVO;

public interface ManagementDAO {
	
	// 매니저 등록
	public Integer insertMgr(MgrVO vo);
	
	// 매니저 로그인
	public MgrVO logIn(MgrVO vo);
	
	// 매니저 검색 리스트로 반환
	public List<MgrVO> selectMgrVOList(HashMap map);
	
	// 매니저 정보 수정
	public Integer updateMgr(MgrVO vo);
	
	// 매니저 삭제
	public Integer deleteMgr(MgrVO vo);
}
