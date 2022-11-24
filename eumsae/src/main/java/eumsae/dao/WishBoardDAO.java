package eumsae.dao;

import java.util.List;

import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

public interface WishBoardDAO {

	//게시판 글
	public List<WishBoardVO> selectBoard(String boardKey);
	
	//게시판 글쓰기
	public Integer insertBoard(WishBoardVO vo);
	
	//요청게시판 페이지네이션
	public List<WishBoardVO> boardPg(PaginationVO pageVO);
	
	//요청게시판 카운팅
	public Long boardCount();
}
