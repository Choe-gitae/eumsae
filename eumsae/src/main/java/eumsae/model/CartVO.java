package eumsae.model;

import lombok.Data;

@Data
public class CartVO {
	
	private int cartno;		//장바구니 번호 (pk)
	private String id;		//아이디	(fk)
	private int amount;		// 주문수량
	private int lpno;		//lp 번호 (fk)
}
