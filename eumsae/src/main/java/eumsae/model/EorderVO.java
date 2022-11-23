package eumsae.model;

import java.util.Date;

public class EorderVO {

	private int orderNo;
	private Date orderDate;
	private int orderTotalPrice;
	private String id;
	private int orderListNo;
	private int lpNo;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}
	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOrderListNo() {
		return orderListNo;
	}
	public void setOrderListNo(int orderListNo) {
		this.orderListNo = orderListNo;
	}
	public int getLpNo() {
		return lpNo;
	}
	public void setLpNo(int lpNo) {
		this.lpNo = lpNo;
	}
	
	
}
