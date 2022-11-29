package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.LpVO;

@Repository
public class LpDAOImpl implements LpDAO {
	// Mybatis를 사용하기 위해 Spring 실행시 SqlSession Template가 on-load 될 수 있도록 Auto-Wiring 시킨다.
	
	@Autowired
	SqlSessionTemplate mybatis;	
	
	
	//lp정보 등록
	/*****************************************************
	 * 
	 * 함수명 : insertLpinfo
	 * 역할 : 관리가페이지에서 LP등록을 누른 경우, 폼에 입력한 데이터를 넘겨, Lp Table, Lp info Table 에 입력함	 
	 * 
	 * @param LpVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public Integer insertLpinfo(LpVO vo) {		
		return mybatis.insert("Lp.insertLpinfo", vo);
	}
	
	//lp 조회 등록
	/*****************************************************
	 * 
	 * 함수명 : insertLp
	 * 역할 : 관리가페이지에서 LP등록을 누른 경우, 폼에 입력한 데이터를 넘겨, Lp Table, Lp info Table 에 입력함	 
	 * 
	 * @param LpVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public Integer insertLp(LpVO vo) {	
		return mybatis.insert("Lp.insertLp",vo);
	}
	
	// LP 정보 검색
	/*****************************************************
	 * 
	 * 함수명 : insertLpinfo
	 * 역할 : 관리가페이지에서 LP등록을 누른 경우, 폼에 입력한 데이터를 넘겨, Lp Table, Lp info Table 에 입력함	 
	 * 
	 * @param VO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	public List<LpVO> searchLp(HashMap map) {
		System.out.println(map.get("searchKey"));
		return mybatis.selectList("Lp.searchLp",map);
	}
	
	// LP정보 키워드로 검색
	/*****************************************************
	 * 
	 * 함수명 : insertLpinfo
	 * 역할 : 관리가페이지에서 LP등록을 누른 경우, 폼에 입력한 데이터를 넘겨, Lp Table, Lp info Table 에 입력함	 
	 * 
	 * @param VO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public List<LpVO> selectLpVOList(HashMap map) {
		return mybatis.selectList("Lp.selectLp", map);
	}

	// LP 삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteLp
	 * 역할 : 관리가페이지에서 Lp 삭제를 누른 경우, 해당하는 infono의 데이터를 지움
	 * 
	 * @param LpVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public Integer deleteLp(LpVO vo) {
		return mybatis.delete("Lp.deleteLp", vo);
	}

	// LP 상세 페이지 정보
	/*****************************************************
	 * 
	 * 함수명 : deleteLp
	 * 역할 : 해당하는 lp 사진을 눌렀을 때, 그와 일치하는 infono를 가져가, 그에 해당하는 정보들을 리턴함	 
	 * 
	 * @param infonoKey
	 * @return LpVO
	 * 
	 */
	@Override
	public LpVO detail(String infonoKey) {		
		return mybatis.selectOne("Lp.detail",infonoKey);
	}
	
	// LP 수정
	/*****************************************************
	 * 
	 * 함수명 : updateLp
	 * 역할 : 관리자가 수정버튼을 눌렀을 때, 폼에 입력해 놓은 데이터를 전달받아, 해당하는 lp번호에 해당하는 데이터를 수정함	 
	 * 
	 * @param LpVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public Integer updateLp(LpVO vo) {
		return mybatis.update("Lp.updateLp", vo);
	}
	
	// LP 번호로 정보 찾기
	/*****************************************************
	 * 
	 * 함수명 : searchByLpno
	 * 역할 : 관리자가 lp번호를 입력했을 때, 이를 전달받아 그와 일치하는 LpVO를 리턴함	 
	 * 
	 * @param lpno
	 * @return LpVO
	 * 
	 */
	@Override
	public LpVO searchByLpno(int lpno) {
		
		return mybatis.selectOne("Lp.selectByLpNo",lpno);
	}
 
}
