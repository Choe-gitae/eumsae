package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.SalesVO;
import eumsae.model.WishBoardVO;

@Repository
public class ManagementDAOImpl implements ManagementDAO {
	// Mybatis를 사용하기 위해 Spring이 메모리에 자동으로 On-Load 할 수 있도록 Auto-Wiring을 해준다.
	
	@Autowired
	private SqlSession mybatis;

	// 매니저 등록
	/*****************************************************
	 * 
	 * 함수명 : insertMgr
	 * 역할 : 관리자가 등록버튼을 눌렀을 때, 정해진 폼에 입력한 데이터를 전달받아 Database에 입력함 	 
	 * 
	 * @param MgrVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public Integer insertMgr(MgrVO vo) {
		System.out.println("mybatis insert 호출");
		return mybatis.insert("Mgr.insertMgr", vo);
	}

	// 로그인
	/*****************************************************
	 * 
	 * 함수명 : logIn
	 * 역할 : 입력한 id 와 pwd 를 전달받아, Database 조회 후 일치하는 데이터가 있는 경우 MgrVO 형태로 리턴함 	 
	 * 
	 * @param MgrVO
	 * @return MgrVO
	 * 
	 */
	@Override
	public MgrVO logIn(MgrVO vo) {
		System.out.println("mybatis select 호출");
		return mybatis.selectOne("Mgr.logIn", vo);
	}

	// 매니저리스트 반환
	/*****************************************************
	 * 
	 * 함수명 : selectMgrVOList
	 * 역할 : 검색조건과 검색 키워드를 HashMap 형태로 전달해, 이와 일치하는 정보가 있는 경우 List 형태로 반환함 	 
	 * 
	 * @param HashMao (SearchCon 과 SearchKey 를 보유하고 있음)
	 * @return List (인자 : MgrVO)
	 * 
	 */
	@Override
	public List<MgrVO> selectMgrVOList(HashMap map) {
		System.out.println("매니저 리스트 반환");
		return mybatis.selectList("Mgr.searchMgr", map);
	}

	// 매니저 정보 수정
	/*****************************************************
	 * 
	 * 함수명 : updateMgr
	 * 역할 : 수정 버튼을 눌렀을 때, 입력된 form 의 데이터를 전달받아, MANAGER 테이블의 정보를 수정함 	 
	 * 
	 * @param MgrVO
	 * @return 1 or 0 (수정이 정상적으로 이뤄지는 경우 1, 실패할 경우 0)
	 * 
	 */
	@Override
	public Integer updateMgr(MgrVO vo) {
		System.out.println("매니저 정보 수정");
		return mybatis.update("Mgr.updateMgr", vo);
	}

	// 매니저 삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteMgr
	 * 역할 : 삭제 버튼을 눌렀을 때, 해당하는 id를 조회해 일치하는 경우 그에 해당하는 정보 삭제 
	 * 
	 * @param MgrVO
	 * @return 1 or 0 (삭제가 정상적으로 이뤄지는 경우 1, 실패할 경우 0)
	 * 
	 */
	@Override
	public Integer deleteMgr(MgrVO vo) {
		System.out.println("매니저 삭제");
		return mybatis.delete("Mgr.deleteMgr", vo);
	}

	// 댓글 입력
	/*****************************************************
	 * 
	 * 함수명 : updateComment
	 * 역할 : 관리자가 게시판의 글을 선택 후 댓글을 입력하고 등록 버튼을 눌렀을 때, 해당하는 글 번호를 넘겨받아 그와 일치하는 정보가 있으면, 댓글을 database에 업데이트함 
	 * 
	 * @param WishBoardVO
	 * @return 1 or 0 (삭제가 정상적으로 이뤄지는 경우 1, 실패할 경우 0)
	 * 
	 */
	@Override
	public Integer updateCommnet(WishBoardVO vo) {
		System.out.println("댓글 입력");
		return mybatis.update("Mgr.updateComment", vo);
	}

	// 댓글 삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteComment
	 * 역할 : 삭제 버튼을 눌렀을 때, 해당하는 id를 조회해 일치하는 경우 그에 해당하는 정보 삭제 
	 * 
	 * @param MgrVO
	 * @return 1 or 0 (삭제가 정상적으로 이뤄지는 경우 1, 실패할 경우 0)
	 * 
	 */
	public Integer deleteComment(WishBoardVO vo) {
		System.out.println("댓글 삭제");
		return mybatis.delete("Mgr.deleteComment", vo);
	}

	/*****************************************************
	 * 전체 주문내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문내역 수 리턴
	 */
	@Override
	public Long selectOrderCount() {
		return mybatis.selectOne("Order.selectOrderCount");
	}

	/*****************************************************
	 * 전체 주문내역 검색후 리스트형태로 리턴
	 * 
	 * @param PaginationVO
	 * @return 전체 주문내역 리턴
	 */
	@Override
	public List<OrderVO> selectOrder(PaginationVO vo) {
		return mybatis.selectList("Order.selectOrder", vo);
	}

	/*****************************************************
	 * 주문내역 검색
	 * 
	 * @param 검색할 옵션, 검색할 키
	 * @return 검색한 주문내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrder(HashMap map) {
		return mybatis.selectList("Order.searchOrder", map);
	}

	/*****************************************************
	 * 주문 상세내역 검색
	 * 
	 * @param 검색할 옵션, 검색할 키
	 * @return 검색한 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrderList(HashMap map) {
		return mybatis.selectList("Order.searchOrderList", map);
	}

	/*****************************************************
	 * 전체 주문 상세내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문내역 수 리턴
	 */
	@Override
	public Long selectOrderListCount() {
		return mybatis.selectOne("Order.selectOrderListCount");
	}

	/*****************************************************
	 * 전체 주문 상세내역 리스트로 리턴
	 * 
	 * @param PaginationVO
	 * @return 전체 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> selectOrderList(PaginationVO pageVO) {
		return mybatis.selectList("Order.selectOrderList", pageVO);
	}

	/*****************************************************
	 * 하루 매출 리턴
	 * 
	 * @param 없음
	 * @return 하루 매출
	 */
	@Override
	public List<SalesVO> selectSales() {
		return mybatis.selectList("Order.selectSales");
	}

}
