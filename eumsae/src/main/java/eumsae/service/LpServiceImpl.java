package eumsae.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.LpDAO;
import eumsae.model.LpVO;

@Service
public class LpServiceImpl implements LpService {

	@Autowired
	private LpDAO dao;
	
	// LP정보 등록
	@Override
	public Integer insertLpInfo(LpVO vo) {
		// TODO Auto-generated method stub
		return dao.insertLpinfo(vo);
	}
	
	// Lp 등록
		@Override
		public Integer insertLp(LpVO vo) {
			// TODO Auto-generated method stub
			return dao.insertLp(vo);
		}
		
	// LP정보 장르 검색 후 리스트로 리턴
	public List<LpVO> searchLp(HashMap map) {
		return dao.searchLp(map);
	}

	// LP 삭제
	@Override
	public Integer deleteLp(LpVO vo) {
		return dao.deleteLp(vo);
	}

	// 해당하는 LP 번호에 대한 정보 반환
	@Override
	public LpVO detail(String infonoKey) {		
		return dao.detail(infonoKey);
	}

	// LP 수정
	@Override
	public Integer updateLp(LpVO vo) {
		return dao.updateLp(vo);
	}
	
	// 검색 조건에 따른 LpVO List 반환
	@Override
	public List<LpVO> selectLpVOList(HashMap map) {
		// TODO Auto-generated method stub
		return dao.selectLpVOList(map);
	}
	
	
}
