package eumsae.service;

import eumsae.model.LpVO;

public interface lpService {
	
	// Lp 정보 등록 (사진 음원 등)
	public Integer insertLpInfo(LpVO vo);
	
	// Lp 등록(LP가격 및 검색용 고유 번호 등)
		public Integer insertLp(LpVO vo);

}
