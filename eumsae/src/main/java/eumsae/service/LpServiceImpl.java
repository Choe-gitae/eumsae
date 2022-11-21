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
	public List<LpVO> genreLp(String category) {
		return dao.genreLp(category);
	}

	// LP정보 키워드로 검색
	@Override
	public List<LpVO> selectLpVOList(HashMap map) {
		return dao.selectLpVOList(map);
	}

	// LP 삭제
	@Override
	public Integer deleteLp(LpVO vo) {
		return dao.deleteLp(vo);
	}
	
}
