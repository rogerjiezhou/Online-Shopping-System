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
		int index = contains(product);
		if(index != -1){
			product.setOrderQuantity(product.getOrderQuantity() + myCart.get(index).getOrderQuantity());
			myCart.set(index, product);
		}else
			myCart.add(product);
	}
	
	public void removeProduct(int index) {
		myCart.remove(index);
	}
	
	public String listCartTable() {
		
		String table ="";
		
		for(int i = 0 ; i < myCart.size() ; i++) {
			
			table += "<tr id=\"" + i + "\"><td>" + myCart.get(i).getProductName() + "</td>" +
					 "<td>" + myCart.get(i).getProductPrice() + "</td>" +
					 "<td style=\"text-align:center\">" + "<input type=\"number\" value=\"" + myCart.get(i).getOrderQuantity() + "\" style=\"width:45px\" min=\"1\">" + 
					 "<input type=\"button\" class = \"btn btn-primary btn-xs\" value=\"Update\" style=\"margin-left:10px\">" +
					 "</td>" +
					 "<td style=\"text-align:center\"><input type=\"button\" class = \"btn btn-default\" onclick=\"location.href=\'moveToList.jsp?productID=" + myCart.get(i).getProductID()  
						+ "&productName=" + myCart.get(i).getProductName() + "&productPrice="+ myCart.get(i).getProductPrice() +
						"&index=" + i + "\'\"" +
					 " value=\"Move to Wish List\"></td>" +
					 "<td style=\"text-align:center\"><input type=\"button\" class = \"btn btn-danger\" onclick=\"location.href=\'removeFromCart.jsp?id=" + i + "\'\"" +
					 " value=\"Remove from Cart\"></tr>";
		}
		
		return table;
	}
	
	public int contains(ProductBean product) {
		
		int index = -1;
		
		for(int i = 0; i < myCart.size(); i++) {
			if(myCart.get(i).equals(product)) {
				index = i;
				System.out.println("find duplicate cart");
				break;
			}
		}
		
		return index;
	}
	
	public void updateCart(int index, int orderQuantity) {
		
		myCart.get(index).setOrderQuantity(orderQuantity);
		
	}
}
