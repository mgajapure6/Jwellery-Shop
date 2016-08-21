package com.shop.jwellery.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "address")
public class Address implements Serializable {
	private static final long serialVersionUID = 1L;

	private int aid;

	private int cid;

	private int pincode;

	private String caddress;

	private String landmark;

	private String Country;

	public Address() {
		super();
	}

	public Address(int aid, int pincode, String caddress, String landmark, String country) {
		super();
		this.aid = aid;
		this.pincode = pincode;
		this.caddress = caddress;
		this.landmark = landmark;
		Country = country;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Column
	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	@Column
	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	@Column
	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	@Column
	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

}
