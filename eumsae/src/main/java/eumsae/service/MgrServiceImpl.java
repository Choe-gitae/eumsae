package eumsae.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eumsae.dao.ManagementDAO;
import eumsae.model.MgrVO;

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
	public List<MgrVO> selectMgrVOList(HashMap map) {
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
	
	
	

}
