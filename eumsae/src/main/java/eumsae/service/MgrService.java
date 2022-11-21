package eumsae.service;

import eumsae.model.MgrVO;

public interface MgrService {
	// 매니저 등록
		public Integer insertMgr(MgrVO vo);
		
		// 매니저 로그인
		public MgrVO logIn(MgrVO vo);
}
