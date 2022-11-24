package eumsae.model;

import lombok.Data;

@Data
public class SalesVO {
	private long todaySales;
	private long recent30Sales;
	private	long monthsSales;
}
