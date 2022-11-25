package eumsae.dao;

import java.util.HashMap;
import java.util.List;

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
		return mybatis.insert("Mgr.insertMgr",vo);
	}

	// 로그인
	@Override
	public MgrVO logIn(MgrVO vo) {
		System.out.println("mybatis select 호출");
		return mybatis.selectOne("Mgr.logIn", vo);
	}
	
	// 매니저리스트 반환
	@Override
	public List<MgrVO> selectMgrVOList(HashMap map) {
		System.out.println("매니저 리스트 반환");
		return mybatis.selectList("Mgr.searchMgr",map);
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
		return mybatis.delete("Mgr.deleteMgr",vo);
	}
	
	//댓글 입력
	@Override
	public Integer updateCommnet(WishBoardVO vo) {
		System.out.println("댓글 입력");
		return mybatis.update("Mgr.updateComment",vo);
	}
	
	//댓글 삭제
	public Integer deleteComment(WishBoardVO vo) {
		System.out.println("댓글 삭제");
		return mybatis.delete("Mgr.deleteComment",vo);
	}

	/*****************************************************
	 * 전체 주문내역 카운팅
	 * @param	없음
	 * @return	전체 주문내역 수 리턴
	 */
	@Override
	public Long selectOrderCount() {
		return mybatis.selectOne("Order.selectOrderCount");
	}

	/*****************************************************
	 * 전체 주문내역 검색후 리스트형태로 리턴
	 * @param	PaginationVO
	 * @return	전체 주문내역 리턴
	 */
	@Override
	public List<OrderVO> selectOrder(PaginationVO vo) {
		return mybatis.selectList("Order.selectOrder", vo);
	}

	
	/*****************************************************
	 * 주문내역 검색
	 * @param	검색할 옵션, 검색할 키
	 * @return	검색한 주문내역 리스트로 리턴
	 */
	@Override
	public List<OrderVO> searchOrder(HashMap map) {
		return mybatis.selectList("Order.searchOrder", map);
	}

	

}
