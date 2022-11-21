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
	
	@Override
	public List<LpVO> getLpList(LpVO vo) {
		return mybatis.selectList("eumsaeDAO.getLpList", vo);
	}
	
	//lp정보 등록
	@Override
	public Integer insertLpinfo(LpVO vo) {		
		return mybatis.insert("Lp.insertLpinfo", vo);
	}
	
	//lp 조회 등록
	@Override
	public Integer insertLp(LpVO vo) {	
		return mybatis.insert("Lp.insertLp",vo);
	}
	
	// LP 정보 검색
	public List<LpVO> genreLp(String category) {
		return mybatis.selectList("Lp.genreLp",category);
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

 
}
