package eumsae.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.LpVO;

@Repository
public class EumsaeDAOImpl implements EumsaeDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public List<LpVO> getLpList(LpVO vo) {
		return mybatis.selectList("eumsaeDAO.getLpList", vo);
	}

}
