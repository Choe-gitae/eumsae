package eumsae.service;

import java.util.HashMap;
import java.util.List;

import eumsae.model.LpVO;

public interface LpService {

	// Lp 정보 등록 (사진 음원 등)
	public Integer insertLpInfo(LpVO vo);

	// Lp 등록(LP가격 및 검색용 고유 번호 등)
	public Integer insertLp(LpVO vo);

	// 메인페이지에서 카테고리 드랍박스 선택시 LP 정보 리턴
	public List<LpVO> genreLp(String category);

	// LP 정보 검색
	public List<LpVO> selectLpVOList(HashMap map);

	// LP 삭제
	public Integer deleteLp(LpVO vo);

	// 해당하는 정보 번호에 대한 정보 반환
	public LpVO detail(String infonoKey);

	// LP 수정
	public Integer updateLp(LpVO vo);

	// LP 번호로 정보 조회
	public LpVO searchByLpno(int lpno);
}
