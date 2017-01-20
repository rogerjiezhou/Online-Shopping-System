package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ProductDAO {
	
	Connection con;
	
	public ProductDAO() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/shoppingcenter", "root", "root");
			
			System.out.println("connected");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public String listProduct() {
		
		String table = "";
		
		try{
			
			ResultSet rs = con.createStatement().executeQuery("select * from product");
			while(rs.next()) {
				table += "<tr>" +
					"<td class=\"name\">" + rs.getString(2) + "</td>" +
					"<td class=\"pwd\">" + rs.getString(3) + "</td>" +
					"<td style=\"text-align:center\">" +			
						"<input type=\"button\" class = \"btn btn-default\" onclick=\"location.href=\'addToList.jsp?productID=" + rs.getInt(1)  
						+ "&productName=" + rs.getString(2)
						+ "&productPrice="+ rs.getDouble(3)+ "\'\" value=\"Add to Wish List\">" +
					"</td>" +
					"<td style=\"text-align:center\">" +			
						"<input type=\"button\" class = \"btn btn-primary\" onclick=\"location.href=\'addToCart.jsp?productID=" + rs.getInt(1)  
						+ "&productName=" + rs.getString(2)
						+ "&productPrice="+ rs.getDouble(3)+ "\'\" value=\"Add to Cart\">" +
					"</td>" +
				"</tr>";
			}
			rs.close();
			
		} catch(Exception e) {
			
		}
		
		
		return table;
		
	}
	
}
