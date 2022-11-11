package eumsae;

public class Pagination {
	   private int pageSize;      	// �� �������� ���� �Խù� ������
	   private int totalPage;      	// �� ������ ����
	   private int pageNum;     	// ������� ������(current)
	   private int pageNavSize;  	// ������ ������ ����(������)
	   private long totalRecord;   	// �� �Խù�(���ڵ�) ����
	   private long startRowIndex;  // �Խù��� ���۹�ȣ(�Ųٷν���)
	   private int firstPageNo;   	// �������� ���۹�ȣ
	   private int lastPageNo;      // �������� ��������ȣ
	    
	   private boolean hasPreviousPageNav;  // ���������� 
	   private boolean hasNextPageNav;      // ����������
	   private boolean hasFirstPageNav;   	// �� ù��° ������
	   private boolean hasLastPageNav;      // �� ������ ������
	   
	   public Pagination(int pageNum, long totalRecord, int pageSize,  int pageNavSize) {
	      this.pageNum = pageNum;
	      this.totalRecord = totalRecord;
	      this.pageSize = pageSize;
	      this.pageNavSize = pageNavSize;

	      if (this.pageNum < 1) {
	         this.pageNum=1;
	      }

	      if (this.pageNavSize < 1) {
	         this.pageSize=10;
	      }
	      this.totalRecord = totalRecord;
	      calculation();
	   }

	   private void calculation() {
	      // �� �������� ���ϱ�
	      totalPage = (int) ( (totalRecord - 1) / pageSize + 1);
	      // 
	      if (pageNum > totalPage) pageNum = totalPage;

	      /* ���� ��������ȣ�� ������ ��ũ ���� ������������ȣ�� ��������������ȣ ��� */
	      this.firstPageNo = (((int) Math.ceil((float)this.pageNum/(float)this.pageNavSize))-1)*this.pageNavSize+1;
	      this.lastPageNo = this.firstPageNo + this.pageNavSize-1;
	      if (this.lastPageNo > this.totalPage) 
	         this.lastPageNo = this.totalPage;
	      
	      this.startRowIndex = this.totalRecord - ((this.pageNum-1) * this.pageSize);

	      hasPreviousPageNav =  this.firstPageNo == 1 ? false : true; 
	      hasNextPageNav =(this.lastPageNo * this.pageSize) < this.totalRecord;
	      
	      hasFirstPageNav =  (this.pageNum > 1 && this.pageNavSize < this.pageNum); 
	      hasLastPageNav = (this.pageNum < this.totalPage && this.lastPageNo + 1 < this.totalPage );       
	   }
	}
