package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.demo.model.ProductBean;

public class WishListDAO {
	
	Connection con;
	
	public WishListDAO() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/shoppingcenter", "root", "root");
			
			System.out.println("connected");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList getWishList(String email) {
		
		ArrayList<ProductBean> al = new ArrayList<ProductBean>();
		
		int x = 0;
			
		try {
			
			PreparedStatement ps = con.prepareStatement("select * from wishlist" +
					" where customerEmail=\"" + email + "\"");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				
				al.add(new ProductBean(rs.getInt(2), rs.getString(3), rs.getDouble(4), 0));
				
			}
			
			System.out.println("DAO " + al.size());
			rs.close();
			ps.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return al;
	}
	
}
