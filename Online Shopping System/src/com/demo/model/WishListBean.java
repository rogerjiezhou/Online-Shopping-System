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
					 "<input type=\"button\" class = \"btn btn-default\" onclick=\"location.href=\'moveToCart.jsp?productID=" + myList.get(i).getProductID() 
						+ "&productName=" + myList.get(i).getProductName() + "&productPrice="+ myList.get(i).getProductPrice()
						+ "&index=" + i + "\'\"" + "value=\"Move to Cart\">" +
					 "<td style=\"text-align:center\">" +			
					 "<input type=\"button\" class = \"btn btn-danger\" onclick=\"location.href=\'removeFromList.jsp?productID=" + myList.get(i).getProductID() +  
					 "&index=" + i + "\'\" value=\"Remove from Wish List\">" +
					 "</td></tr>";
		}
			
		return table;
	}
	
	public boolean contains(ProductBean product) {
		
		boolean contains = false;
		
		for(ProductBean temp: myList) {
			if(temp.equals(product)) {
				contains = true;
				System.out.println("find duplicate list");
				break;
			}
		}
		
		return contains;
	}
}
