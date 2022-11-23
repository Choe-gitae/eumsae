package eumsae.model;

import lombok.Data;

@Data
public class PaginationVO {
	private int pageSize;      	// 한 페이지에 보일 게시물 사이즈
	private int totalPage;      	// 총 페이지 갯수
	private int pageNo;     	// 현재 페이지(current)
	private int pageNavSize;  	// 페이지 보여줄 단위(사이즈)
	private long totalRecord;   	// 총 게시물(레코드) 갯수
	private int firstPageNo;   	// 페이지의 시작번호
	private int lastPageNo;      // 페이지의 마지막번호
	private int startRow;		// select 시작행
	private int endRow;			// select 마지막행

	private boolean hasPrevPageNav;  	// 이전페이지
	private boolean hasNextPageNav;      // 다음페이지
	private boolean hasFirstPageNav;   	// 처음페이지
	private boolean hasLastPageNav;      // 마지막페이지


	public PaginationVO(int pageNum, long totalRecord, int pageSize,  int pageNavSize) {
		this.pageNo = pageNum;
		this.totalRecord = totalRecord;
		this.pageSize = pageSize;
		this.pageNavSize = pageNavSize;
		calculation();
	}

	private void calculation() {
		// 총 페이지 수 계산
		totalPage = (int) Math.ceil(totalRecord / (float)pageSize);
		// 현재 페이지가 총페이지 보다 커지면 현재페이지 총페이지로 제한
		if (pageNo > totalPage) pageNo = totalPage;
		// 현재 페이지번호로 페이지 링크 블럭의 시작페이지번호와 마지막페이지번호 계산
		firstPageNo = ( ( (int)Math.ceil((float)pageNo / (float)pageNavSize) ) -1 ) * pageNavSize +1;
		lastPageNo = firstPageNo + pageNavSize - 1;
		if (lastPageNo > totalPage) 
			lastPageNo = totalPage;
		// 이전, 다음, 첫페이지, 끝페이지 표시여부 true,false
		hasPrevPageNav = firstPageNo == 1 ? false : true; 
		hasNextPageNav = (lastPageNo * pageSize) < totalRecord;
		hasFirstPageNav = (pageNo > 1 && pageNavSize < pageNo); 
		hasLastPageNav = (pageNo < totalPage && lastPageNo + 1 < totalPage );       
		// DB에서 검색해 올 시작로우 엔드로우 계산
		startRow = (pageNo * pageSize) - (pageSize -1);
		endRow = pageNo * pageSize;
	}
}
