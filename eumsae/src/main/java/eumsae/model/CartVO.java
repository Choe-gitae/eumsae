package eumsae.model;

import lombok.Data;

@Data
public class CartVO {
	
	private int cartno;		//장바구니 번호 (pk)
	private String id;		//아이디	(fk)
	private int amount;		//수량
	private int lpno;		//lp 번호 (fk)
	private String title; // 제목(LP이름)
	private String singer;	// 가수
	private int price; // 가격
	private String cjpg; // 사진구별자
}
