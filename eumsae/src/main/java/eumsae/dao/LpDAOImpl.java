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
	public List<LpVO> genreLp(String genreKey) {
		return mybatis.selectList("Lp.genreLp",genreKey);
	}

	// LP 상세 페이지 정보
	@Override
	public LpVO detail(String infonoKey) {		
		return mybatis.selectOne("Lp.detail",infonoKey);
	}

	@Override
	public List<LpVO> selectLpVOList(HashMap map) {
		// TODO Auto-generated method stub
		return mybatis.selectList("Lp.selectLp",map);
	}

 
}
