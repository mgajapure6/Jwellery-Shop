package com.shop.jwellery.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orderdetail")
public class OrderDetail implements Serializable{
	private static final long serialVersionUID = 1L;

	private int odid;
	private int oid;
	private int pid;
	private int quantity;
	private double qprice;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getOdid() {
		return odid;
	}
	public void setOdid(int odid) {
		this.odid = odid;
	}
	
	@Column
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	
	@Column
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	@Column
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Column
	public double getQprice() {
		return qprice;
	}
	public void setQprice(double qprice) {
		this.qprice = qprice;
	}
	
	
}
