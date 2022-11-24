package eumsae.service;

import java.util.List;
import eumsae.model.WishBoardVO;

public interface WishBoardService {
	
//요청게시판 글목록
	public List<WishBoardVO> selectWishBoardVOList(String boardKey);

	//요청게시판 글 작성
	public Integer insertBoard(WishBoardVO vo);
	
}

