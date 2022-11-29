package eumsae.model;

import lombok.Data;

@Data
public class SalesVO {
	// Lombok의 Data Annotation을 활용해, Getter & Setter 및 toString 메소드 구현
	private long todaySales;					// 일 매출
	private long recent15Sales;					// 최근 15일 매출
	private	long monthsSales;					// 월 별 매출
}
