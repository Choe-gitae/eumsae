package eumsae.model;

import lombok.Data;

@Data
public class CartVO {
	// Lombok의 Annotation 중 하나인 Data를 활용해, Getter & Setter , toString 메소드 구현	
	private int cartno;		//장바구니 번호 (pk)
	private String id;		//아이디	(fk)
	private int amount;		//수량
	private int lpno;		//lp 번호 (fk)
	private String title; 	// 제목(LP이름)
	private String singer;	// 가수
	private int price; 		// 가격
	private String cjpg; 	// 사진구별자
	private int cnt;		// 재고
	
}
