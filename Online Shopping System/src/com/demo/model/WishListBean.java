package com.demo.model;

import java.io.Serializable;
import java.util.ArrayList;

public class WishListBean implements Serializable{
	
	private ArrayList<ProductBean> myList;
//	private String username;

	public WishListBean() {
		this.myList = new ArrayList<ProductBean>();
	}
	
	public ArrayList getMyList() {
		return (ArrayList) myList.clone();
	}
	
	public void addProduct(ProductBean product, String username) {
		myList.add(product);
	}
	
	public void removeProduct(int index, String username) {
		myList.remove(index);
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
		System.out.println(myList);
		System.out.println("Bean " + myList.size());;
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
