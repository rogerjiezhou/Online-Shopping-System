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
	
	public String loginValidate(CustomerBean customer){
		int x = 0;
		String username = "";
		
		String loginEmail = customer.getEmail();
		String loginPwd = customer.getPwd();
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from customer" +
					" where customerEmail=\"" + loginEmail +
					"\" and customerPwd=\"" + loginPwd + "\"");
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
				username = rs.getString(2);
			
			rs.close();
			ps.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		return username;
	}
	
	public int regValidate(CustomerBean customer){
		int x = 0;
		
		String regEmail = customer.getEmail();
		String regPwd = customer.getPwd();
		
		try {
			PreparedStatement ps = con.prepareStatement("select * from customer" +
					" where customerEmail=\"" + regEmail +
					"\"");
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
				x  = 1;
			else
				x = -1;

			rs.close();
			ps.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		return x;
	}
	
	
	public int insertCustomer(CustomerBean customer){
		int x = 0;
		
		String regEmail = customer.getEmail();
		String regUsername = customer.getUsername();
		String regPwd = customer.getPwd();
		
		try {
			PreparedStatement ps = con.prepareStatement("insert into customer values(?, ?, ?)");
			
			ps.setString(1, regEmail);
			ps.setString(2, regUsername);
			ps.setString(3, regPwd);
			
			x = ps.executeUpdate();
			
			ps.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		return x;
	}
}
