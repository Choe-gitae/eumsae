package eumsae.model;

import java.util.List;

import lombok.Data;

@Data
public class CheckOutVOList {
	// Lombok의 Annotation 중 하나인 Data를 활용해, Getter & Setter , toString 메소드 구현
	private List<CheckOutVO> checkOutVOList;		// 해당하는 CheckOutVO 가 존재하는 경우 List 형태로 반환되게끔 인자 입력	
}
