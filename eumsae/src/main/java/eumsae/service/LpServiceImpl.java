package eumsae.service;

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
		
	// LP정보 검색 후 리스트로 리턴
	public List<LpVO> genreLp(String genreKey) {
		return dao.genreLp(genreKey);
	}

	// 해당하는 LP 번호에 대한 정보 반환
	@Override
	public LpVO detail(String infonoKey) {		
		return dao.detail(infonoKey);
	}
	
}
