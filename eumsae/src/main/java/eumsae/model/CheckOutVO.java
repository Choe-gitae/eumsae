package eumsae.model;

import lombok.Data;

@Data
public class CheckOutVO {

	private String id;
	private String name;
	private String tel;
	private String email;
	private String cjpg;
	private String title;
	private String singer;
	private int price;
	private int amount;
	private int lpno;
	private int cartno;		//장바구니 번호 (pk)
	private boolean state;	// 체크박스 체크 여부
	private int cnt;		// 재고
	

	
}
