package eumsae.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.EumsaeDAO;
import eumsae.model.LpVO;

@Service
public class EumsaeServiceImpl implements EumsaeService {
	
	@Autowired
	EumsaeDAO eumsaeDAO;
	
	@Override
	public List<LpVO> getLpList(LpVO vo) {
		return eumsaeDAO.getLpList(vo);
	}

}
