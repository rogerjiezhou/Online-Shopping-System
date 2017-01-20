package com.demo.model;

import java.io.Serializable;
import java.util.ArrayList;

public class WishListBean implements Serializable{
	
	private ArrayList<ProductBean> myList;

	public WishListBean() {
		this.myList = new ArrayList<ProductBean>();
	}
	
	public ArrayList getMyList() {
		return (ArrayList) myList.clone();
	}
	
	public void addProduct(ProductBean product) {
		myList.add(product);
	}
	
	public void removeProduct(int index) {
		myList.remove(index);
	}


	public void setList(ArrayList al) {
		
		this.myList = (ArrayList)al.clone();

	}
	
	public String listTable() {
		
		String table ="";
		
		for(int i = 0 ; i < myList.size() ; i++) {
			
			table += "<tr><td>" + myList.get(i).getProductName() + "</td>" +
					 "<td>" + myList.get(i).getProductPrice() + "</td>" +
					 "<td style=\"text-align:center\">" +			
					 "<input type=\"button\" class = \"btn btn-danger\" onclick=\"location.href=\'removeFromList.jsp?productID=" + myList.get(i).getProductID() +  
					 "&index=" + i + "\'\" value=\"Remove from Wish List\">" +
					 "</td></tr>";
		}
			
		return table;
	}
	
	public boolean exist(ProductBean product) {
		
		boolean exist = false;
		
		for(ProductBean temp: myList) {
			if(temp.equals(product)) {
				exist = true;
				System.out.println("find duplicate");
				break;
			}
		}
		
		return exist;
	}
}
