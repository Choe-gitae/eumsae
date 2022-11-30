package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.LpVO;

@Repository
public class LpDAOImpl implements LpDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	// lp정보 등록
	@Override
	public Integer insertLpinfo(LpVO vo) {
		return mybatis.insert("Lp.insertLpinfo", vo);
	}

	// lp 조회 등록
	@Override
	public Integer insertLp(LpVO vo) {
		return mybatis.insert("Lp.insertLp", vo);
	}

	// LP 정보 검색
	public List<LpVO> searchLp(HashMap map) {
		return mybatis.selectList("Lp.searchLp", map);
	}

	// LP정보 키워드로 검색
	@Override
	public List<LpVO> selectLpVOList(HashMap map) {
		return mybatis.selectList("Lp.selectLp", map);
	}

	// LP 삭제
	@Override
	public Integer deleteLp(LpVO vo) {
		return mybatis.delete("Lp.deleteLp", vo);
	}

	// LP 상세 페이지 정보
	@Override
	public LpVO detail(String infonoKey) {
		return mybatis.selectOne("Lp.detail", infonoKey);
	}

	// LP 수정
	@Override
	public Integer updateLp(LpVO vo) {
		return mybatis.update("Lp.updateLp", vo);
	}

	// LP 번호로 정보 찾기
	@Override
	public LpVO searchByLpno(int lpno) {
		return mybatis.selectOne("Lp.selectByLpNo", lpno);
	}

	/*****************************************************
	 * 최근 한달 안에 발매된 LP
	 * 
	 * @param 없음
	 * @return 가수, 제목
	 */
	@Override
	public List<LpVO> selectFeaturedNewReleases() {
		return mybatis.selectList("selectFeaturedNewReleases");
	}

	/*****************************************************
	 * 장르별 가장 많이 팔린 LP
	 * 
	 * @param 없음
	 * @return 가수, 제목
	 */
	@Override
	public LpVO selectGenreBestSellers(String genre) {
		return mybatis.selectOne("Lp.selectGenreBestSellers", genre);
	}

}
