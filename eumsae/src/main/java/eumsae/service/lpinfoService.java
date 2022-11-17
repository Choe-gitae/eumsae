package eumsae.service;

import eumsae.model.LpVO;

public interface lpinfoService {
	// lp 등록(lp가격 등)
	public Integer insertLpInfo(LpVO vo);
	
	// 시퀀스 조회
	public int selectLpInfoSeq(LpVO vo);
}
