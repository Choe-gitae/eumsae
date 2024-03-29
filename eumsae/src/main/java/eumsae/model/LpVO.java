package eumsae.model;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class LpVO {
	private int infono; // lp정보번호
	private int lpno;	// lp번호
	private String genre; // 장르
	private String title; // 제목(LP이름)
	private String stitle;	// 음원 제목
	private String singer;	// 가수
	private String region; // 지역
	private int price; // 가격
	private String content; // LP 내용	
	private String lpdate; // 발매일
	private String jpg; // 사진
	private String cjpg; // 사진구별자
	private String mp3; // 음원
	private String cmp3; // 음원구별자
	private long jpgSize; // 사진크기
	private long mp3Size; // 음원크기
	private int cnt; // 재고수량
	private int amount; // 재고수량
	MultipartFile fjpg; // 사진파일
	MultipartFile fmp3; // 음원파일
	
	//---------- 중요 사항 -----------
	/*
	 * 	파일 업로드를 하는 경우 , Lombok의 어노테이션이나 Lombok 관련 기능이 먹지 않는다.
	 *  따라서 getter setter toString() 을 직접 생성해서 사용해야 함.
	 */
	
	// Getter and Setter
	public int getInfono() {
		return infono;
	}

	public void setInfono(int infono) {
		this.infono = infono;
	}	
	
	public int getLpno() {
		return lpno;
	}

	public void setLpno(int lpno) {
		this.lpno = lpno;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStitle() {
		return stitle;
	}

	public void setStitle(String stitle) {
		this.stitle = stitle;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLpdate() {
		return lpdate;
	}

	public void setLpdate(String lpdate) {
		this.lpdate = lpdate;
	}

	public String getJpg() {
		return jpg;
	}

	public void setJpg(String jpg) {
		this.jpg = jpg;
	}

	public String getCjpg() {
		return cjpg;
	}

	public void setCjpg(String cjpg) {
		this.cjpg = cjpg;
	}

	public String getMp3() {
		return mp3;
	}

	public void setMp3(String mp3) {
		this.mp3 = mp3;
	}

	public String getCmp3() {
		return cmp3;
	}

	public void setCmp3(String cmp3) {
		this.cmp3 = cmp3;
	}

	public long getJpgSize() {
		return jpgSize;
	}

	public void setJpgSize(long jpgSize) {
		this.jpgSize = jpgSize;
	}

	public long getMp3Size() {
		return mp3Size;
	}

	public void setMp3Size(long mp3Size) {
		this.mp3Size = mp3Size;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	// File 전송 관련 
	public MultipartFile getFjpg() {
		return fjpg;
	} // end of getFjpg

	public void setFjpg(MultipartFile fjpg) {
		this.fjpg = fjpg;
		if (!fjpg.isEmpty()) {
			this.jpg = fjpg.getOriginalFilename();
			this.jpgSize = fjpg.getSize();

			UUID uuid = UUID.randomUUID(); // 파일 구별을 위한 uuid 부여
			this.cjpg = uuid.toString(); // 구별 파일 명

			File fi = new File("D:\\eumsae\\eumsae\\src\\main\\webapp\\resources\\lpImg\\" + cjpg + ".jpg");		//파일 저장 경로

			try {
				fjpg.transferTo(fi);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} // end of if

	}// end of Set Fjpg

	public MultipartFile getFmp3() {
		return fmp3;
	}// end of getFmp3

	public void setFmp3(MultipartFile fmp3) {
		this.fmp3 = fmp3;
		if (!fmp3.isEmpty()) {
			this.mp3 = fmp3.getOriginalFilename();
			this.mp3Size = fmp3.getSize();

			UUID uuid = UUID.randomUUID();
			this.cmp3 = uuid.toString();

			File fm = new File("D:\\eumsae\\eumsae\\src\\main\\webapp\\resources\\lpMp3\\" + cmp3 + ".mp3");

			try {
				fmp3.transferTo(fm);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} // end of if
	}// end of Set Fmp3
	
	// 입력된 정보를 검사하기 위한 toString
	@Override
	public String toString() {
		return "LpVO [infono=" + infono + ", lpno=" + lpno + ", genre=" + genre + ", title=" + title + ", stitle="
				+ stitle + ", singer=" + singer + ", region=" + region + ", price=" + price + ", content=" + content
				+ ", lpdate=" + lpdate + ", jpg=" + jpg + ", cjpg=" + cjpg + ", mp3=" + mp3 + ", cmp3=" + cmp3
				+ ", jpgSize=" + jpgSize + ", mp3Size=" + mp3Size + ", cnt=" + cnt + ", amount=" + amount + ", fjpg="
				+ fjpg + ", fmp3=" + fmp3 + "]";
	}
	
}
