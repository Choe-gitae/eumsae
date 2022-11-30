package eumsae.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import eumsae.model.CartVO;
import eumsae.model.CheckOutVO;
import eumsae.model.CustomerVO;
import eumsae.model.OrderVO;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// Mybatis를 사용하기 위한 SqlSession을 자동으로 On-Load 하기 위해 Auto-Wiring을 해주어야 함
	@Autowired
	SqlSession mybatis;

	// 회원가입
	/*****************************************************
	 * 
	 * 함수명 : insertCustomer 역할 : 회원 및 관리자가 form 에 맞춰 입력한 정보를 DataBase로 보내, 정보를 입력시킴
	 * 
	 * 
	 * @param CustomerVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public Integer insertCustomer(CustomerVO vo) {
		System.out.println("회원 가입");
		return mybatis.insert("customer.insertCustomer", vo);
	}

	// id 중복 검사
	/*****************************************************
	 * 
	 * 함수명 : idCheck 역할 : 회원이 입력한 id를 전달받아, 일치하는 정보가 있는 경우 VO 형태로 돌려줌
	 * 
	 * 
	 * @param id
	 * @return CustomerVO
	 * 
	 */
	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		System.out.println("id 중복 확인");
		return mybatis.selectOne("customer.idCheck", vo);
	}

	// 로그인
	/*****************************************************
	 * 
	 * 함수명 : login 역할 : 회원 및 관리자가 form 에 맞춰 입력한 정보를 DataBase로 보내, 정보를 입력시킴
	 * 
	 * 
	 * @param CustomerVO
	 * @return 1 or 0 (입력이 되는 경우 1, 없는 경우 0)
	 * 
	 */
	@Override
	public CustomerVO login(CustomerVO vo) {
		System.out.println("로그인");
		return mybatis.selectOne("customer.idCheck", vo);
	}

	// CustomerVO리스트 반환
	/*****************************************************
	 * 
	 * 함수명 : selectCustomerVOList 역할 : 검색조건과 키워드를 HashMap 형태로 넘겨받아, 이와 일치하는 정보가 있을
	 * 경우 이를 CustomerVO List 형태로 반환함
	 * 
	 * 
	 * @param HashMap (Search Con , Search Key 를 보유하고 있음)
	 * @return List (인자 : CustomerVO)
	 * 
	 */
	@Override
	public List<CustomerVO> selectCustomerVOList(HashMap map) {
		System.out.println("CustomerListVO 확인");
		return mybatis.selectList("customer.selectCustomer", map);
	}

	// 회원 정보 수정
	/*****************************************************
	 * 
	 * 함수명 : updateCustomer 역할 : 선택한 id 의 회원 정보를 입력한 폼의 데이터로 수정
	 * 
	 * 
	 * @param CustomerVO
	 * @return 1 or 0 (수정이 완료된 경우 1, 그 이외 0)
	 * 
	 */
	@Override
	public Integer updateCustomer(CustomerVO vo) {
		System.out.println("회원 정보 수정");
		return mybatis.update("customer.updateCustomer", vo);
	}

	// 회원 삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteCustomer 역할 : 선택한 id 와 일치하는 회원 정보 삭제
	 * 
	 * 
	 * @param CustomerVO
	 * @return 1 or 0 (1 일 경우, 회원 정보 삭제 (CustomerVO 가 Customer Table에서 Drop 됨) // 0일
	 *         경우 삭제 실패)
	 * 
	 */
	@Override
	public Integer deleteCustomer(CustomerVO vo) {
		System.out.println("회원 삭제");
		return mybatis.delete("customer.deleteCustomer", vo);
	}

	// 카트 담기
	/*****************************************************
	 * 
	 * 함수명 : addCart 역할 : 선택한 LP 번호와, 주문 수량을 가지고 가 Cart Table에 DATA를 입력함
	 * 
	 * 
	 * @param CartVO (LPNO 와 AMOUNT를 보유하고 있음)
	 * @return 1 or 0 (1일 경우 Cart Table 에 데이터 입력, 0일 경우 입력 실패)
	 * 
	 */
	@Override
	public Integer addCart(CartVO vo) {
		System.out.println("카트담기 확인 : " + vo);
		return mybatis.insert("customer.addCart", vo);

	}

	// 아이디로 회원 정보 찾기
	/*****************************************************
	 * 
	 * 함수명 : selectById 역할 : 회원이 입력한 id를 전달받아 Database를 조회, 입력한 id와 일치하는 정보를 가지고 옴
	 * 
	 * 
	 * @param id
	 * @return CustomerVO (id 와 일치하는)
	 * 
	 */
	@Override
	public CustomerVO selectById(CustomerVO vo) {
		System.out.println("아이디로 검색");
		return mybatis.selectOne("customer.selectById", vo);
	}

	// 아이디로 카트 리스트 반환
	/*****************************************************
	 * 
	 * 함수명 : cartListById 역할 : 회원이 입력한 id를 전달받아, Cart Table에 일치하는 정보가 있는 경우, 이를 List
	 * 형태로 반환함
	 * 
	 * 
	 * @param id
	 * @return List (인자 : CartVO)
	 * 
	 */
	@Override
	public List<CartVO> cartListById(String id) {
		System.out.println("아이디로 카트 리스트 반환");
		return mybatis.selectList("customer.cartListById", id);
	}

	// 상품 중복 검사
	/*****************************************************
	 * 
	 * 함수명 : searchCart 역할 : Add to Cart 버튼을 회원이 눌렀을 때, 해당하는 lp 번호와 id 를 전달받아, 이와
	 * 일치하는 정보가 있는 경우 해당하는 CartVO 를 리턴함
	 * 
	 * 
	 * @param CartVO (id 와 LP번호를 함유하고 있는)
	 * @return CartVO (입력한 id 및 LP번호와 일치하는)
	 * 
	 */
	@Override
	public CartVO searchCart(CartVO vo) {
		System.out.println("상품 중복 검사");
		return mybatis.selectOne("customer.searchCart", vo);
	}

	// 카트 삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteCart 역할 : 카트 페이지에서 X 버튼을 눌렀을 때, 해당하는 정보를 Table 에서 삭제
	 * 
	 * 
	 * @param CartVO
	 * @return 1 or 0 (1인 경우 정상적으로 정보가 삭제됨, 0 일 경우 삭제 실패)
	 * 
	 */
	@Override
	public Integer deleteCart(CartVO vo) {
		System.out.println("카트 삭제");
		return mybatis.delete("customer.deleteCart", vo);
	}

	// 결제 리스트 반환
	/*****************************************************
	 * 
	 * 함수명 : selectCheckOutList 역할 : CheckOut 버튼을 눌렀을 때, 본인이 주문한 내역을 List 형태로 반환함
	 * 
	 * 
	 * @param CheckOutVO
	 * @return CheckOutVO List
	 * 
	 */
	@Override
	public List<CheckOutVO> selectCheckOutList(CheckOutVO vo) {
		System.out.println("결제 리스트 반환");
		return mybatis.selectList("customer.selectCheckOutList", vo);
	}

	// 카트 수량 변경
	/*****************************************************
	 * 
	 * 함수명 : updateCart 역할 : 카트 페이지에서 주문 수량을 변경하고, checkout 버튼 선택시, 회원이 변경한 수량을 넘겨받아
	 * Cart Table의 주문 수량을 변경함
	 * 
	 * 
	 * @param CheckOutVO
	 * @return 1 or 0 (1인 경우 정상적으로 정보가 수정됨, 0 일 경우 수정 실패)
	 * 
	 */
	@Override
	public Integer updateCart(CheckOutVO vo) {
		System.out.println("카트 수량 변경");
		return mybatis.update("customer.updateCart", vo);
	}

	// 카트 정보 모두 삭제
	/*****************************************************
	 * 
	 * 함수명 : deleteAllCart 역할 : 결제가 완료된 경우, 카트 내 모든 정보를 삭제함 *
	 * 
	 * @param CheckOutVO
	 * @return 1 or 0 (1인 경우 정상적으로 정보가 삭제됨, 0 일 경우 삭제 실패)
	 * 
	 */
	@Override
	public Integer deleteAllCart(CheckOutVO vo) {
		System.out.println("카트 모두 삭제");
		return mybatis.delete("customer.deleteAllCart", vo);
	}

	// 주문 내역 입력
	/*****************************************************
	 * 
	 * 함수명 : insertOrder 역할 : 결제 API 가 완료되었을 때, id , lp 번호, 수량, 주문 총액을 가져가 Database에
	 * 입력함
	 * 
	 * @param OrderVO
	 * @return 1 or 0 (1인 경우 정상적으로 정보가 입력됨, 0 일 경우 입력 실패)
	 * 
	 */
	@Override
	public Integer insertOrder(OrderVO vo) {
		System.out.println("주문 내역 입력");
		mybatis.insert("Order.insertOrder", vo);
		// 주문번호 리턴
		return vo.getOrderNo();
	}

	// 주문 내역 입력
	/*****************************************************
	 * 
	 * 함수명 : insertOrderList 역할 : 결제 API 가 완료되었을 때, 주문 번호, Lp 번호 , 주문 수량을 가져가
	 * Database에 입력함 *
	 * 
	 * @param OrderVO
	 * @return 1 or 0 (1인 경우 정상적으로 정보가 입력됨, 0 일 경우 입력 실패)
	 * 
	 */
	@Override
	public Integer insertOrderList(HashMap<String, Integer> map) {
		System.out.println("상세 주문 내역 입력");
		return mybatis.insert("Order.insertOrderList", map);
	}

	// 임시비밀번호로 변경
	@Override
	public Integer updateTempPw(CustomerVO vo) {
		System.out.println("임시비밀번호로 비밀번호 변경");
		return mybatis.update("customer.updateTempPw", vo);
	}
}
