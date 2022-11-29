package eumsae.model;

import lombok.Data;

@Data
public class CheckOutVO {
	// Lombok의 Data Annotation을 활용해, Getter & Setter 및 toString 메소드 구현
	private String id;		// 회원 아이디
	private String name;	// 회원 명
	private String tel;		// 회원 연락처
	private String email;	// 회원 이메일	
	private String cjpg;	// lp 사진 명
	private String title;	// lp 명
	private String singer;	// 가수 
	private int price;		// lp 상품 가격
	private int amount;		// lp 주문 수량
	private int lpno;		// lp 상품 번호 (구별자, 고유값)
	private int cartno;		//장바구니 번호 (pk)
	private boolean state;	// 체크박스 체크 여부
	private int cnt;		// 재고
	

	
}
