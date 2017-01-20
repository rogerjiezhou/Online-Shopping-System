package com.demo.model;

import java.io.Serializable;
import java.util.ArrayList;

public class WishListBean implements Serializable{
	
	private ArrayList<ProductBean> myList;
	private String email;

	public WishListBean() {
		this.myList = new ArrayList<ProductBean>();
	}
	
	public ArrayList getMyList() {
		return (ArrayList) myList.clone();
	}
	
	public void addProduct(ProductBean product) {
		myList.add(product);
		System.out.println("add " + myList);
	}
	
	public void removeProduct(int index) {
		myList.remove(index);
		System.out.println(myList);
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String wishListTable() {
		
		String table ="";
		
		for(int i = 0 ; i < myList.size() ; i++) {
			
			table += "<tr><td>" + myList.get(i).getProductName() + "</td>" +
					 "<td>" + myList.get(i).getProductPrice() + "</td>" +
					 "<td><a href = \"removeFromCart.jsp?id=" + i + "\">Remove</td></tr>";			
		}
			
		return table;
	}
	
	public void setList(ArrayList al) {
		
		this.myList = (ArrayList)al.clone();

	}
	
	public String listTable() {
		
		String table ="";
		
		for(int i = 0 ; i < myList.size() ; i++) {
			
			table += "<tr><td>" + myList.get(i).getProductName() + "</td>" +
					 "<td>" + myList.get(i).getProductPrice() + "</td>" +
					 "<td><a href = \"removeFromList.jsp?id=" + i + "\">Remove</td></tr>";			
		}
			
		return table;
	}
}
