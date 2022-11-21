package eumsae.service;

import java.util.List;

import eumsae.model.LpVO;

public interface LpService {
	
	// Lp 정보 등록 (사진 음원 등)
	public Integer insertLpInfo(LpVO vo);
	
	// Lp 등록(LP가격 및 검색용 고유 번호 등)
	public Integer insertLp(LpVO vo);
		
	// LP 검색
	public List<LpVO> genreLp(String searchKey);
	
	// 해당하는 정보 번호에 대한 정보 반환
	public LpVO detail(String infonoKey);

}
