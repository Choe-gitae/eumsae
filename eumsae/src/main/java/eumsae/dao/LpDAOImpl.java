package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.CartVO;
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
	public List<LpVO> genreLp(String category) {
		return mybatis.selectList("Lp.genreLp", category);
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

	// LP 번호에 따른 LpVO List 반환
	@Override
	public LpVO searchByLpno(int lpno) {		
		return mybatis.selectOne("Lp.selectByLpNo",lpno);
	}

}
