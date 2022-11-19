package eumsae.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.LpVO;

@Repository
public class lpDAOImpl implements lpDAO {
	
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

 
}
