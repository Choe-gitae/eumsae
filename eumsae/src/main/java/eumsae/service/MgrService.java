package eumsae.service;

import java.util.HashMap;
import java.util.List;

import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

public interface MgrService {
	// 매니저 등록
	public Integer insertMgr(MgrVO vo);

	// 매니저 로그인
	public MgrVO logIn(MgrVO vo);

	// 매니저 검색 리스트로 반환
	public List<MgrVO> selectMgrVOList(HashMap<String,String> map);

	// 매니저 정보 수정
	public Integer updateMgr(MgrVO vo);

	// 매니저 삭제
	public Integer deleteMgr(MgrVO vo);

	// 게시판 댓글달기
	public Integer updateComment(WishBoardVO vo);

	// 게시판 글 삭제
	public Integer deleteComment(WishBoardVO vo);

	/*****************************************************
	 * 전체 주문내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문내역 수 리턴
	 */
	public Long selectOrderCount();

	/*****************************************************
	 * 전체 주문내역
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
	public List<OrderVO> searchOrder(HashMap<String,String> map);
	
	/*****************************************************
	 * 최근 주문내역
	 * @param 없음
	 * @return 최근 주문내역
	 */
	public List<OrderVO> selectRecentOrder();
	
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
	public List<OrderVO> searchOrderList(HashMap<String,String> map);

	/*****************************************************
	 * 오늘 매출 리턴
	 * @param 없음
	 * @return 오늘 매출
	 */
	public Integer selectTodaySales();

	/*****************************************************
	 * 최근 장르별 매출
	 * @param 없음
	 * @return 최근 15일 장르별 매출
	 */
	public HashMap<String,List> selectRecentSales();

	/*****************************************************
	 * 월별 매출 리턴
	 * @param 없음
	 * @return 월별 매출
	 */
	public List<HashMap> selectMonthsSales();
}
