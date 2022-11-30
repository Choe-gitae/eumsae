package eumsae.model;

import lombok.Data;

@Data
public class OrderVO {
	private int		orderNo;			// 주문번호
	private String	orderDate;			// 주문날짜
	private	int		orderTotalPrice;	// 주문금액
	private	int		amount;				// 주문수량
	private String	id;					// 주문자 아이디
	private int		orderListNo;		// 주문 상세내역 번호
	private int		lpno;				// LP번호
	private String	cjpg;				// 서버에 저장된 사진 UUID
	private String	genre;				// LP장르
	private String	singer;				// LP가수
	private	String	title;				// LP제목
	private int		price;				// LP가격
	private	int		cnt;				// LP재고
}
