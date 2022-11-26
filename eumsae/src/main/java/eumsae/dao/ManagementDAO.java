package eumsae.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

public interface ManagementDAO {

	// 매니저 등록
	public Integer insertMgr(MgrVO vo);

	// 매니저 로그인
	public MgrVO logIn(MgrVO vo);

	// 매니저 검색 리스트로 반환
	public List<MgrVO> selectMgrVOList(HashMap map);

	// 매니저 정보 수정
	public Integer updateMgr(MgrVO vo);

	// 매니저 삭제
	public Integer deleteMgr(MgrVO vo);

	// 댓글 입력
	public Integer updateCommnet(WishBoardVO vo);

	// 댓글 삭제
	public Integer deleteComment(WishBoardVO vo);

	/*****************************************************
	 * 전체 주문내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문내역 수 리턴
	 */
	public Long selectOrderCount();

	/*****************************************************
	 * 전체 주문내역 검색후 리스트형태로 리턴
	 * 
	 * @param PaginationVO
	 * @return 전체 주문내역 리턴
	 */
	public List<OrderVO> selectOrder(PaginationVO pageVO);

	/*****************************************************
	 * 주문내역 검색
	 * 
	 * @param 검색할 옵션, 검색할 키
	 * @return 검색한 주문내역 리스트로 리턴
	 */
	public List<OrderVO> searchOrder(HashMap map);

	/*****************************************************
	 * 전체 주문 상세내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문내역 수 리턴
	 */
	public Long selectOrderListCount();

	/*****************************************************
	 * 전체 주문 상세내역 리스트로 리턴
	 * 
	 * @param PaginationVO
	 * @return 전체 주문 상세내역 리스트로 리턴
	 */
	public List<OrderVO> selectOrderList(PaginationVO pageVO);

	/*****************************************************
	 * 주문 상세내역 검색
	 * 
	 * @param 검색할 옵션, 검색할 키
	 * @return 검색한 주문 상세내역 리스트로 리턴
	 */
	public List<OrderVO> searchOrderList(HashMap map);

	/*****************************************************
	 * 하루 매출 리턴
	 * 
	 * @param 없음
	 * @return 하루 매출
	 */
	public Integer selectDaySales();
	
	/*****************************************************
	 * 최근 15일 장르별 매출
	 * @param	없음
	 * @return	최근 15일 장르별 매출
	 */
	public Integer selectRecent15Sales(HashMap map);
	
}
