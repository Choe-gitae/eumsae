package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import eumsae.model.LpVO;

public interface LpDAO {

	// Lp등록(정보)
	public Integer insertLpinfo(LpVO vo);

	// Lp등록(lp)
	public Integer insertLp(LpVO vo);

	// Lp 삭제
	public Integer deleteLp(LpVO vo);

	// LP 상세 정보 VO로 반환
	public LpVO detail(String infonoKey);

	// LP 검색 조건에 따른 리스트 반환
	public List<LpVO> selectLpVOList(HashMap map);

	// LP 수정
	public Integer updateLp(LpVO vo);

	public List<LpVO> searchLp(HashMap map);

	// LP 번호로 정보 조회
	public LpVO searchByLpno(int lpno);

	/*****************************************************
	 * 최근 한달 안에 발매된 LP
	 * 
	 * @param 없음
	 * @return 가수, 제목
	 */
	public List<LpVO> selectFeaturedNewReleases();

	/*****************************************************
	 * 장르별 가장 많이 팔린 LP
	 * 
	 * @param 없음
	 * @return 가수, 제목
	 */
	public LpVO selectGenreBestSellers(String genre);
}
