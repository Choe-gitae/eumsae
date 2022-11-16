package eumsae.dao;

import java.util.List;

import eumsae.model.LpVO;

public interface EumsaeDAO {
	// Lp정보 검색 후 리스트로 리턴
	public List<LpVO> getLpList(LpVO vo);
}
