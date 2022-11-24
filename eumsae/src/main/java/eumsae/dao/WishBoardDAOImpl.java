package eumsae.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.WishBoardVO;

@Repository
public class WishBoardDAOImpl implements WishBoardDAO{

	@Autowired
	SqlSession mybatis;


	@Override
	public List<WishBoardVO> selectBoard(String boardKey) {
		return mybatis.selectList("WishBoard.selectBoard", boardKey);
	}


	@Override
	public Integer insertBoard(WishBoardVO vo) {
		return mybatis.insert("WishBoard.insertBoard",vo);
	}
	
	
	
	
	
	
}
