package eumsae.model;

import lombok.Data;

@Data
public class SalesVO {
	private long todaySales;
	private long recent15Sales;
	private	long monthsSales;
}
