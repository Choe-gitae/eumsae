package eumsae.service;

import java.util.HashMap;
import java.util.List;
import eumsae.model.CartVO;
import eumsae.model.CheckOutVO;
import eumsae.model.CustomerVO;
import eumsae.model.OrderVO;

public interface CustomerService {
	// 회원가입
	public Integer insertCustomer(CustomerVO vo);

	// 아이디 중복확인
	public CustomerVO idCheck(CustomerVO vo);

	// 로그인
	public CustomerVO login(CustomerVO vo);

	// 회원정보 리스트로 반환
	public List<CustomerVO> selectCustomerVOList(HashMap map);

	// 회원 정보 수정
	public Integer updateCustomer(CustomerVO vo);

	// 회원 정보 삭제
	public Integer deleteCustomer(CustomerVO vo);

	// 카트담기
	public Integer addCart(CartVO vo);

	// 아이디로 회원 정보 찾기
	public CustomerVO selectById(CustomerVO vo);

	// 아이디로 카트 리스트 반환
	public List<CartVO> cartListById(String id);

	// 상품 중복 검사
	public CartVO searchCart(CartVO vo);

	// 카트 삭제
	public Integer deleteCart(CartVO vo);

	// checkOutVOList 반환
	public List<CheckOutVO> selectCheckOutList(CheckOutVO vo);

	// 카트 수량 변경
	public Integer updateCart(CheckOutVO vo);

	// 결제 시 카트 모두 삭제
	public Integer deleteAllCart(CheckOutVO vo);

	// 주문 내역 생성
	public Integer insertOrder(OrderVO vo);

	// 상세 주문 내역 생성
	public Integer insertOrderList(HashMap<String, Integer> map);

	// 임시 비밀번호 발송
	public Integer tempPw(CustomerVO vo);
	
	// 이름과 전화번호로 아이디 찾기
	public CustomerVO selectByTelAndName(CustomerVO vo);
}
