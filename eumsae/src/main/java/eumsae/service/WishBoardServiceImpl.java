package eumsae.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import eumsae.dao.WishBoardDAO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

@Service
public class WishBoardServiceImpl implements WishBoardService{

	@Autowired
	private WishBoardDAO dao;
	
	@Override
	public List<WishBoardVO> selectWishBoardVOList(String boardKey) {
		return dao.selectBoard(boardKey);
	}

	@Override
	public Integer insertBoard(WishBoardVO vo) {
		System.out.println("요청게시판 글작성");
		return dao.insertBoard(vo);
	}
	
	

	@Override
	public List<WishBoardVO> selectWishBoardPg(PaginationVO pageVO) {
		System.out.println("요청게시판 페이지네이션 서비스");
		return dao.boardPg(pageVO);
	}

	@Override
	public Long boardCount() {
		return dao.boardCount();
	}

}
