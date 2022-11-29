package eumsae.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

@Repository
public class WishBoardDAOImpl implements WishBoardDAO {
	// Mybatis 를 사용하기 위해 Spring On-Load 시 메모리에 mybatis를 올릴 수 있도록 Auto-Wiring 해주어야 함

	@Autowired
	SqlSession mybatis;

	// 검색 키워드에 따른 글 리스트 반환
	/*****************************************************
	 * 
	 * 함수명 : selectBoard 역할 : Board 버튼을 눌렀을 때, 요청사항 게시판에 작성되어 있는 글 리스트를 반환
	 * 
	 * @param BoardKey (검색키워드)
	 * @return List(인자 : WishBoardVO)
	 * 
	 */
	@Override
	public List<WishBoardVO> selectBoard(String boardKey) {
		return mybatis.selectList("WishBoard.selectBoard", boardKey);
	}

	// 회원이 요청사항 게시판 글 쓰기 버튼을 눌렀을 때
	/*****************************************************
	 * 
	 * 함수명 : insertBoard 역할 : 글쓰기 버튼을 눌렀을 때, 해당하는 폼에 있는 정보를 전달받아 Database에 입력함
	 * 
	 * @param WishBoardVO
	 * @return 1 or 0 (입력이 정상적으로 이뤄지는 경우 1, 실패할 경우 0)
	 * 
	 */

	@Override
	public Integer insertBoard(WishBoardVO vo) {
		return mybatis.insert("WishBoard.insertBoard", vo);
	}

	// 요청사항게시판 페이지네이션
	/*****************************************************
	 * 
	 * 함수명 : boardPg
	 * 역할 : 글 리스트를 조회시 데이터가 많은 경우, 이를 조절해 한번에 볼 수 있는 데이터의 양을 제한시킴 (Pagination 실행)
	 * 
	 * @param PaginationVO
	 * @return List (인자 :  WishBoardVO)
	 * 
	 */
	@Override
	public List<WishBoardVO> boardPg(PaginationVO pageVO) {
		return mybatis.selectList("WishBoard.boardPg", pageVO);
	}

	// 요청사항게시판 페이지네이션 2
	/*****************************************************
	 * 
	 * 함수명 : boardCount 
	 * 역할 : 페이지네이션을 실행하기 전에, 모든 글 갯수를 측정해, 이를 숫자형태로 반환함
	 * 
	 * @param 없음
	 * @return long 형 숫자 (입력한 글의 갯수)
	 * 
	 */
	@Override
	public Long boardCount() {
		return mybatis.selectOne("WishBoard.boardCount");
	}

}
