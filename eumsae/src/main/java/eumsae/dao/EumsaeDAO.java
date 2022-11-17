package eumsae.dao;

import java.util.List;

import eumsae.model.LpVO;

public interface EumsaeDAO {
	// Lp정보 검색 후 리스트로 리턴
	public List<LpVO> getLpList(LpVO vo);
	
	// Lp등록(정보)
	public Integer insertLpinfo(LpVO vo);
	
	//Lp등록(lp)
	public Integer insertLp(LpVO vo);
	
	// LPinfo 시퀀스 조회
	public int selectSeq(LpVO vo);
}
