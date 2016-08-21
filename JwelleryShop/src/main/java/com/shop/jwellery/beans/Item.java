package com.shop.jwellery.beans;

import java.io.Serializable;

public class Item implements Serializable {
	private static final long serialVersionUID = 1L;

	private Product product;
	private int quentity;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuentity() {
		return quentity;
	}

	public void setQuentity(int quentity) {
		this.quentity = quentity;
	}

	public Item(Product product, int quentity) {
		super();
		this.product = product;
		this.quentity = quentity;
	}

	public Item() {
		super();
	}

}
