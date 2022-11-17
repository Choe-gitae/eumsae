package eumsae.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.EumsaeDAO;
import eumsae.model.LpVO;

@Service
public class lpinfoServiceImpl implements lpinfoService {

	@Autowired
	private EumsaeDAO dao;
	
	// LP정보 입력
	@Override
	public Integer insertLpInfo(LpVO vo) {
		// TODO Auto-generated method stub
		return dao.insertLpinfo(vo);
	}

}
