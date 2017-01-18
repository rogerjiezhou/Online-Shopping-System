package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;

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
	
	public void print() {
		
	}
	
}
