package eumsae.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import eumsae.dao.lpDAO;
import eumsae.model.LpVO;

@Service
public class lpServiceImpl implements lpService {

	@Autowired
	private lpDAO dao;
	
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
	
}
