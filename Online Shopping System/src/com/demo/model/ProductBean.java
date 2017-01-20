package com.demo.model;

import java.io.Serializable;

public class ProductBean implements Serializable{
	
	private int productID;
	private String productName;
	private double productPrice;
	private int orderQuantity;
	
	public ProductBean(){
		this.orderQuantity = 1;
	}
	
	public ProductBean(int productID, String productName, double productPrice, int orderQuantity) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.productPrice = productPrice;
		this.orderQuantity = orderQuantity;
	}
	
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public int getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + productID;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductBean other = (ProductBean) obj;
		if (this.getProductID() == other.getProductID())
			return true;
		return false;
	}
	
	
}
