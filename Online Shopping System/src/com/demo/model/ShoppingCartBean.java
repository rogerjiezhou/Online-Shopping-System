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
		return (ArrayList) myCart.clone();
	}
	
	public void addProduct(ProductBean product) {
		myCart.add(product);
	}
	
	public void removeProduct(int index) {
		myCart.remove(index);
	}
	
	public String listCartTable() {
		
		String table ="";
		
		for(int i = 0 ; i < myCart.size() ; i++) {
			
			table += "<tr><td>" + myCart.get(i).getProductName() + "</td>" +
					 "<td>" + myCart.get(i).getProductPrice() + "</td>" +
					 "<td>" + myCart.get(i).getOrderQuantity() + "</td>" +
					 "<td style=\"text-align:center\"><input type=\"button\" class = \"btn btn-default\" onclick=\"location.href=\'removeToList.jsp?id=" + i + "\'\"" +
					 " value=\"Remove to Wish List\"></td>" +
					 "<td style=\"text-align:center\"><input type=\"button\" class = \"btn btn-danger\" onclick=\"location.href=\'removeFromCart.jsp?id=" + i + "\'\"" +
					 " value=\"Remove from Cart\"></tr>";
		}
			
		return table;
	}
}
