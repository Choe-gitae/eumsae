package eumsae.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
	public List<MgrVO> selectMgrVOList(HashMap<String,String> map) {
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
	public List<OrderVO> searchOrder(HashMap<String,String> map) {
		return dao.searchOrder(map);
	}

	/*****************************************************
	 * 최근 주문내역
	 * @param 없음
	 * @return 최근 주문내역
	 */
	@Override
	public List<OrderVO> selectRecentOrder() {
		// 출력할 주문내역 갯수 지정
		Integer count = 15;
		return dao.selectRecentOrder(count);
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
	public List<OrderVO> searchOrderList(HashMap<String,String> map) {
		return dao.searchOrderList(map);
	}

	/*****************************************************
	 * 오늘 매출 리턴
	 * 
	 * @param 없음
	 * @return 오늘 매출
	 */
	@Override
	public Integer selectTodaySales() {
		Integer todaySales = dao.selectTodaySales();
		if(todaySales == null) todaySales = 0;
		return todaySales;
	}

	/*****************************************************
	 * 최근 장르별 매출
	 * 
	 * @param 없음
	 * @return 최근 15일 장르별 매출
	 */
	@Override
	public HashMap<String,List> selectRecentSales() {
		// 최근일 범위 지정
		int recentDays = 15;
		// 현재 날짜
		LocalDate date = LocalDate.now();
		// 최근일 날짜 배열
		ArrayList<String> dateArr = new ArrayList<String>();
		for (int i = recentDays; i > 0; i--) {
			dateArr.add(date.minusDays(i).format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
		}
		// 장르 배열
		String[] genre = {"POP","Rock","HipHop","Ballad","국내가요","Fork","RnB","Elec","Ost","트로트"};
		// 리턴할 결과 Map
		HashMap<String,List> resultMap = new HashMap<String,List>();
		resultMap.put("date", dateArr);

		for (int i = 0; i < genre.length; i++) {
			List			returnList 	= new ArrayList<>();
			List<HashMap>	tempList 	= new ArrayList<HashMap>();
			HashMap 		map 		= new HashMap<>();
			map.put("genre", genre[i]);
			map.put("recentDate", recentDays);
			// 장르별 판매 검색
			tempList = dao.selectRecentSales(map);
			// 장르별 판매가 없을 경우 리스트에 0원을 넣는다
			if(tempList.isEmpty()) {
				for (int j = 0; j < recentDays; j++) {
					returnList.add("0");
				}
				// HashMap에 판매결과 배열리스트를 담는다
				resultMap.put(genre[i], returnList);
			}else {
				// 장르별 판매가 있을 경우
				int index = 0;
				for (int j = 0; j < recentDays; j++) {
					String strDate = dateArr.get(j);
					if (tempList.size() > index && tempList.get(index).containsValue(strDate)) {
						returnList.add(tempList.get(index).get("TOTAL"));
						index++;
					} else {
						returnList.add("0");
					}// end if~else
				}// end for
				// HashMap에 판매결과 배열리스트를 담는다
				resultMap.put(genre[i], returnList);
			}// end if~else
		}// end for
		return resultMap;
	}


	/*****************************************************
	 * 월별 매출
	 * @param 없음
	 * @return 월별 매출
	 */
	@Override
	public List<HashMap> selectMonthsSales() {
		return dao.selectMonthsSales();
	}

}
