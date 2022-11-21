package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import eumsae.model.LpVO;

public interface LpDAO {
	// Lp정보 검색 후 리스트로 리턴
	public List<LpVO> getLpList(LpVO vo);
	
	// Lp등록(정보)
	public Integer insertLpinfo(LpVO vo);
	
	// Lp등록(lp)
	public Integer insertLp(LpVO vo);
	
	// 메인페이지에서 카테고리 드랍박스 선택시 LP정보 리턴
	public List<LpVO> genreLp(String category);
	
	// LP 정보 검색
	public List<LpVO> selectLpVOList(HashMap map);
	
	// Lp 삭제
	public Integer deleteLp(LpVO vo);
	
} 
