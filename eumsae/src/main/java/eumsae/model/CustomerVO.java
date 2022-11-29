package eumsae.model;

import lombok.Data;

@Data
public class CustomerVO {
	// Lombok의 Annotation 중 하나인 Data를 활용해, Getter & Setter , toString 메소드 구현
	private String id;		// 회원 아이디 (고유값)
	private String pwd;		// 비밀번호
	private String nick;	// 닉네임 (사이트에서 사용할 별명)	
	private String birth;	// 회원 생년월일
	private String name;	// 회원 본명
	private String addr;	// 회원 주소
	private String tel;		// 회원 연락처
	private String email;	// 회원 이메일
}
