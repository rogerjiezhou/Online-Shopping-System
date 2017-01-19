package com.demo.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

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
	}
	
	public void removeProduct() {
		
	}
	
	public String listCartTable() {
		
		String table ="";
		
		for(int i = 0 ; i < myCart.size() ; i++) {
			
			table += "<tr><td>" + myCart.get(i).getProductName() + "</td>" +
					 "<td>" + myCart.get(i).getProductPrice() + "</td>" +
					 "<td><a href = \"#\">Remove</td></tr>";			
		}
			
		return table;
	}
}
