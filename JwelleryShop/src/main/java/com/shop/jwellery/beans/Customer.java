package com.shop.jwellery.beans;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.*;

@Entity
@Table(name = "customer")
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;

	private int cid;

	private String name;

	private String email;

	private String password;

	private String contactno;

	private Set<Address> address;

	private Set<OrderData> orderData;

	

	public Customer(int cid, String name, String email, String password, String contactno, Set<Address> address,
			Set<OrderData> orderData) {
		super();
		this.cid = cid;
		this.name = name;
		this.email = email;
		this.password = password;
		this.contactno = contactno;
		this.address = address;
		this.orderData = orderData;
	}

	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "Customer_Address", joinColumns = { @JoinColumn(name = "cid") }, inverseJoinColumns = {
			@JoinColumn(name = "aid") })
	public Set<Address> getAddress() {
		return address;
	}

	public void setAddress(Set<Address> address) {
		this.address = address;
	}

	
	
	public Customer() {
		super();
	}
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "Customer_OrderData", joinColumns = { @JoinColumn(name = "cid") }, inverseJoinColumns = {
			@JoinColumn(name = "oid") })
	public Set<OrderData> getOrderData() {
		return orderData;
	}

	public void setOrderData(Set<OrderData> orderData) {
		this.orderData = orderData;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	@Column
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column
	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

}
