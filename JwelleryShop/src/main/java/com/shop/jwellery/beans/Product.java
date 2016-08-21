package com.shop.jwellery.beans;

import java.io.Serializable;
//import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int PRODUCTID;
	private String PRODUCTNAME;
	private String PRODUCTDESC;
	private String PRODUCTCODE;
	private double PRODUCTPRICE;
	private double PRODUCTWEIGHT;
	private String PRODUCTMETAL;
	private String PRODUCTPHOTO;
	
	//private Set<OrderDetail> orderDetail;

	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "order_detail_product", joinColumns = { @JoinColumn(name = "PRODUCTID") }, inverseJoinColumns = {
			@JoinColumn(name = "odid") })
//	public Set<OrderDetail> getOrderDetail() {
//		return orderDetail;
//	}
//
//	public void setOrderDetail(Set<OrderDetail> orderDetail) {
//		this.orderDetail = orderDetail;
//	}

	public int getPRODUCTID() {
		return PRODUCTID;
	}

	public void setPRODUCTID(int pRODUCTID) {
		PRODUCTID = pRODUCTID;
	}

	public String getPRODUCTNAME() {
		return PRODUCTNAME;
	}

	public void setPRODUCTNAME(String pRODUCTNAME) {
		PRODUCTNAME = pRODUCTNAME;
	}

	public String getPRODUCTDESC() {
		return PRODUCTDESC;
	}

	public void setPRODUCTDESC(String pRODUCTDESC) {
		PRODUCTDESC = pRODUCTDESC;
	}

	public String getPRODUCTCODE() {
		return PRODUCTCODE;
	}

	public void setPRODUCTCODE(String pRODUCTCODE) {
		PRODUCTCODE = pRODUCTCODE;
	}

	public double getPRODUCTPRICE() {
		return PRODUCTPRICE;
	}

	public void setPRODUCTPRICE(double pRODUCTPRICE) {
		PRODUCTPRICE = pRODUCTPRICE;
	}

	public double getPRODUCTWEIGHT() {
		return PRODUCTWEIGHT;
	}

	public void setPRODUCTWEIGHT(double pRODUCTWEIGHT) {
		PRODUCTWEIGHT = pRODUCTWEIGHT;
	}

	public String getPRODUCTMETAL() {
		return PRODUCTMETAL;
	}

	public void setPRODUCTMETAL(String pRODUCTMETAL) {
		PRODUCTMETAL = pRODUCTMETAL;
	}

	public String getPRODUCTPHOTO() {
		return PRODUCTPHOTO;
	}

	public void setPRODUCTPHOTO(String pRODUCTPHOTO) {
		PRODUCTPHOTO = pRODUCTPHOTO;
	}

}
