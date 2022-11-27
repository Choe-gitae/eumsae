package eumsae.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

@Repository
public class ManagementDAOImpl implements ManagementDAO {

	@Autowired
	private SqlSession mybatis;

	// 매니저 등록
	@Override
	public Integer insertMgr(MgrVO vo) {
		System.out.println("mybatis insert 호출");
		return mybatis.insert("Mgr.insertMgr", vo);
	}

	// 로그인
	@Override
	public MgrVO logIn(MgrVO vo) {
		System.out.println("mybatis select 호출");
		return mybatis.selectOne("Mgr.logIn", vo);
	}

	// 매니저리스트 반환
	@Override
	public List<MgrVO> selectMgrVOList(HashMap<String,String> map) {
		System.out.println("매니저 리스트 반환");
		return mybatis.selectList("Mgr.searchMgr", map);
	}

	// 매니저 정보 수정
	@Override
	public Integer updateMgr(MgrVO vo) {
		System.out.println("매니저 정보 수정");
		return mybatis.update("Mgr.updateMgr", vo);
	}

	// 매니저 삭제
	@Override
	public Integer deleteMgr(MgrVO vo) {
		System.out.println("매니저 삭제");
		return mybatis.delete("Mgr.deleteMgr", vo);
	}

	// 댓글 입력
	@Override
	public Integer updateCommnet(WishBoardVO vo) {
		System.out.println("댓글 입력");
		return mybatis.update("Mgr.updateComment", vo);
	}

	// 댓글 삭제
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
	public List<OrderVO> searchOrder(HashMap<String,String> map) {
		return mybatis.selectList("Order.searchOrder", map);
	}
	
	/*****************************************************
	 * 최근 주문내역
	 * @param 없음
	 * @return 최근 주문내역
	 */
	@Override
	public List<OrderVO> selectRecentOrder(Integer count) {
		return mybatis.selectList("Order.selectRecentOrder", count);
	}

	/*****************************************************
	 * 주문 상세내역 검색
	 * 
	 * @param 검색할 옵션, 검색할 키
	 * @return 검색한 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrderList(HashMap<String,String> map) {
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
	 * 오늘 매출 리턴
	 * 
	 * @param 없음
	 * @return 오늘 매출
	 */
	@Override
	public Integer selectTodaySales() {
		return mybatis.selectOne("Order.selectTodaySales");
	}

	/*****************************************************
	 * 최근 장르별 매출
	 * @param	장르명, 최근일 범위
	 * @return	최근 장르별 매출
	 */
	@Override
	public List<HashMap> selectRecentSales(HashMap map) {
		return mybatis.selectList("Order.selectRecentSales", map);
	}

	/*****************************************************
	 * 월별 매출
	 * @param	없음
	 * @return	월별 매출
	 */
	@Override
	public List<HashMap> selectMonthsSales() {
		return mybatis.selectList("Order.selectMonthsSales");
	}

}
