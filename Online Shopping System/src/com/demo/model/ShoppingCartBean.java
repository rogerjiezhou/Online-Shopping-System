package com.demo.model;

import java.io.Serializable;
import java.util.ArrayList;

public class ShoppingCartBean implements Serializable{
	
	private ArrayList<ProductBean> myCart;

	public ShoppingCartBean() {
		this.myCart = new ArrayList<ProductBean>();
	}
	
	public ArrayList getMyCart() {
		return myCart;
	}
	
	public void addProduct(ProductBean product) {
		myCart.add(product);
		System.out.println(myCart);
	}
	
	public void removeProduct() {
		
	}
	
}
