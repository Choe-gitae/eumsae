package eumsae.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.ManagementDAO;
import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.SalesVO;

@Service
public class MgrServiceImpl implements MgrService {

	@Autowired
	private ManagementDAO dao;
	
	@Override
	public Integer insertMgr(MgrVO vo) {
		System.out.println("신규 관리자 등록");
		return dao.insertMgr(vo);
	}

	@Override
	public MgrVO logIn(MgrVO vo) {
		System.out.println("관리자 로그인");
		return dao.logIn(vo);
	}

	@Override
	public List<MgrVO> selectMgrVOList(HashMap map) {
		System.out.println("매니저 리스트 검색 서비스");
		return dao.selectMgrVOList(map);
	}

	@Override
	public Integer updateMgr(MgrVO vo) {
		System.out.println("매니저 정보 수정 서비스");
		return dao.updateMgr(vo);
	}

	@Override
	public Integer deleteMgr(MgrVO vo) {
		System.out.println("매니저 삭제 서비스");
		return dao.deleteMgr(vo);
	}

	
	/*****************************************************
	 * 전체 주문내역 카운팅
	 * @param	없음
	 * @return	전체 주문내역 수 리턴
	 */
	@Override
	public Long selectOrderCount() {
		return dao.selectOrderCount();
	}

	
	/*****************************************************
	 * 전체 주문내역 검색후 리스트형태로 리턴
	 * @param	PaginationVO
	 * @return	전체 주문내역 리턴
	 */
	@Override
	public List<OrderVO> selectOrder(PaginationVO vo) {
		return dao.selectOrder(vo);
	}

	
	/*****************************************************
	 * 주문내역 검색
	 * @param	검색할 옵션, 검색할 키
	 * @return	검색한 주문내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrder(HashMap map) {
		return dao.searchOrder(map);
	}

	
	/*****************************************************
	 * 주문 상세내역 검색
	 * @param	검색할 옵션, 검색할 키
	 * @return	검색한 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrderList(HashMap map) {
		return dao.searchOrderList(map);
	}

	
	/*****************************************************
	 * 전체 주문 상세내역 카운팅
	 * @param	없음
	 * @return	전체 주문내역 수 리턴
	 */
	@Override
	public Long selectOrderListCount() {
		return dao.selectOrderListCount();
	}

	
	/*****************************************************
	 * 전체 주문 상세내역 리스트로 리턴
	 * @param	PaginationVO
	 * @return	전체 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> selectOrderList(PaginationVO pageVO) {
		return dao.selectOrderList(pageVO);
	}

	
	/*****************************************************
	 * 하루 매출, 최근 30일 매출, 월별 매출 리턴
	 * @param	없음
	 * @return	각 매출
	 */
	@Override
	public List<SalesVO> selectSales() {
		return dao.selectSales();
	}
	
}
