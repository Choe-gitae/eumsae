package eumsae.dao;

import java.util.List;

import eumsae.model.LpVO;

public interface LpDAO {
		
	// Lp등록(정보)
	public Integer insertLpinfo(LpVO vo);
	
	//Lp등록(lp)
	public Integer insertLp(LpVO vo);
	
	// LP 검색 후 리스트로 반환
	public List<LpVO> genreLp(String searchKey);
	
	// LP 상세 정보 VO로 반환
	public LpVO detail(String infonoKey);
	 
} 
