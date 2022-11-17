package eumsae.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.EumsaeDAO;
import eumsae.model.LpVO;

@Service
public class lpscanServiceImpl implements lpscanService {
	
	@Autowired
	private EumsaeDAO dao;

	// lp 입력
	@Override
	public Integer insertLp(LpVO vo) {
		// TODO Auto-generated method stub
		return dao.insertLp(vo);
	}

}
