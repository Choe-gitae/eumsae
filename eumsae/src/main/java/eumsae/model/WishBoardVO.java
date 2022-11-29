package eumsae.model;

import lombok.Data;

@Data
public class WishBoardVO {
	// Lombok의 Data Annotation을 활용해, Getter & Setter 및 toString 메소드 구현
	private int		wboardNo;		// 게시판 글 번호(고유값)
	private String	id;				// 회원 아이디
	private String	nick;			// 회원 닉네임
	private String	title;			// 게시글 제목
	private String	article;		// 게시글 내용
	private String	awriteDate;		// 작성일
	private String	ccomment;		// 관리자 답글
	private String	cwriteDate;		// 관리자 답글 작성잉ㄹ
}



