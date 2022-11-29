package eumsae.model;

import lombok.Data;

@Data
public class MgrVO {
	// Lombok의 Data Annotation을 활용해, Getter & Setter 및 toString 메소드 구현
	private String mid;			// 매니저 아이디 (고유값)
	private String pwd;			// 비밀번호
	private String name;		// 이름
	private String addr;		// 매니저 주소(거주지)
	private String email;		// 이메일
	private String tel;			// 전화번호
	private String auth;		// 매니저 권한 (최고 권한 : admin / 중간 관리자 : mgr / 신규 직원 : sub)
	
	
}
