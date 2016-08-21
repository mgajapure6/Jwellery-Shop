package com.shop.jwellery.beans;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orderdata")
public class OrderData implements Serializable {
	private static final long serialVersionUID = 1L;

	private int oid;
	private int cid;
	private int aid;
	private int pid;
	private String orderdate;
	private String shippingdate;
	private int quantity;
	private double totalprice;
	
	private Set<OrderDetail> orderDetail;
	
	
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "order_data_detail", joinColumns = { @JoinColumn(name = "odid") }, inverseJoinColumns = {
			@JoinColumn(name = "oid") })
	public Set<OrderDetail> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(Set<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	} 
	
	@Column
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	@Column
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	
	@Column
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	@Column
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	
	@Column
	public String getShippingdate() {
		return shippingdate;
	}
	public void setShippingdate(String shippingdate) {
		this.shippingdate = shippingdate;
	}
	
	@Column
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Column
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	
	
}
