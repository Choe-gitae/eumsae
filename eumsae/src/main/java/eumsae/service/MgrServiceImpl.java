package eumsae.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.ManagementDAO;
import eumsae.model.MgrVO;
import eumsae.model.OrderVO;
import eumsae.model.PaginationVO;
import eumsae.model.WishBoardVO;

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

	@Override
	public Integer updateComment(WishBoardVO vo) {
		System.out.println("댓글달기 서비스");
		return dao.updateCommnet(vo);
	}

	@Override
	public Integer deleteComment(WishBoardVO vo) {
		System.out.println("댓글삭제 서비스");
		return dao.deleteComment(vo);
	}

	/*****************************************************
	 * 전체 주문내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문내역 수 리턴
	 */
	@Override
	public Long selectOrderCount() {
		return dao.selectOrderCount();
	}

	/*****************************************************
	 * 전체 주문내역 검색후 리스트형태로 리턴
	 * 
	 * @param PaginationVO
	 * @return 전체 주문내역 리턴
	 */
	@Override
	public List<OrderVO> selectOrder(PaginationVO vo) {
		return dao.selectOrder(vo);
	}
	
	/*****************************************************
	 * 주문내역 검색
	 * 
	 * @param 검색할 옵션, 검색할 키
	 * @return 검색한 주문내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrder(HashMap map) {
		return dao.searchOrder(map);
	}
	
	/*****************************************************
	 * 전체 주문내역 카운팅
	 * 
	 * @param 없음
	 * @return 전체 주문 상세내역 수 리턴
	 */
	@Override
	public Long selectOrderListCount() {
		return dao.selectOrderListCount();
	}

	/*****************************************************
	 * 전체 주문 상세내역 리스트로 리턴
	 * 
	 * @param	PaginationVO
	 * @return	전체 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> selectOrderList(PaginationVO pageVO) {
		return dao.selectOrderList(pageVO);
	}

	/*****************************************************
	 * 주문 상세내역 검색
	 * 
	 * @param	검색할 옵션, 검색할 키
	 * @return	검색한 주문 상세내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrderList(HashMap map) {
		return dao.searchOrderList(map);
	}

	/*****************************************************
	 * 하루 매출 리턴
	 * 
	 * @param 없음
	 * @return 하루 매출
	 */
	@Override
	public Integer selectDaySales() {
		// TODO Auto-generated method stub
		return null;
	}

	/*****************************************************
	 * 최근 15일 장르별 매출 리턴
	 * 
	 * @param 없음
	 * @return 최근 15일 장르별 매출
	 */
	@Override
	public List selectRecent15Sales() {
		String[] genre = {"POP","ROCK","HipHop","Ballad","국내가요","Fork","RnB","일렉트로","OST","트로트"};
		List chartList = new ArrayList();
		int recentDate = 15;
		
		for (int i = 0; i < genre.length; i++) {
			List totalList = new ArrayList();
			for (int j = recentDate; j > 0; j--) {
				int index = 0;
				HashMap map = new HashMap();
				map.put("genre", genre[i]);
				map.put("date", j);
				totalList.add(index, dao.selectRecent15Sales(map));
				index++;
			}
			chartList.add(i, totalList);
		}
		System.out.println(chartList);
		return null;
	}
	/*
	SELECT	SUM(NVL(l.price,0)) total
	FROM	eorder e LEFT OUTER JOIN eorder_list el
						 ON e.order_no = el.order_no
					 LEFT OUTER JOIN lp l
						 ON el.lpno = l.lpno
					 LEFT OUTER JOIN lpinfo i
						 ON l.infono = i.infono
	WHERE	i.GENRE = 'POP' AND SUBSTR(el.ORDER_DATE,1,10) = SUBSTR(SYSDATE-15,1,10);

	SELECT	SUBSTR(el.ORDER_DATE,1,10), NVL(SUM(NVL(l.price,0)),0) total
	FROM	eorder e LEFT OUTER JOIN eorder_list el
						 ON e.order_no = el.order_no
					 LEFT OUTER JOIN lp l
						 ON el.lpno = l.lpno
					 LEFT OUTER JOIN lpinfo i
						 ON l.infono = i.infono
	WHERE	i.GENRE = 'POP'
	GROUP BY el.ORDER_DATE
	HAVING el.ORDER_DATE BETWEEN SYSDATE-15 AND SYSDATE-1;
	*/
	
	/*****************************************************
	 * 월별 매출 리턴
	 * 
	 * @param 없음
	 * @return 월별 매출
	 */
	@Override
	public Integer selectMonthsSales() {
		// TODO Auto-generated method stub
		return null;
	}

}
