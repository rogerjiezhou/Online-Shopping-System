package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.demo.model.CustomerBean;

public class CustomerDAO {
	
	
	Connection con;
	
	public CustomerDAO() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/shoppingcenter", "root", "root");
			
			System.out.println("connected");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int regValidate(CustomerBean customer){
		int x = 0;
		
		String regEmail = customer.getEmail();
		String regPwd = customer.getPwd();
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from customer" +
					" where customerEmail=\"" + regEmail +
					"\" and customerPwd=\"" + regPwd +"\"");
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
				x  = 1;
			else
				x = -1;
			System.out.println(x);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		return x;
	}
	
}
