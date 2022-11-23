package eumsae.model;

import lombok.Data;

@Data
public class OrderVO {
	private int		orderNo;
	private String	orderDate;
	private	int		orderTotalPrice;
	private String	id;
	private int		orderListNo;
	private int		lpno;
}
