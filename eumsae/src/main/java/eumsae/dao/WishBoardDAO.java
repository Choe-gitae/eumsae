package eumsae.dao;

import java.util.List;
import eumsae.model.WishBoardVO;

public interface WishBoardDAO {

	//게시판 글
	public List<WishBoardVO> selectBoard(String boardKey);
	
	//게시판 글쓰기
	public Integer insertBoard(WishBoardVO vo);
}
