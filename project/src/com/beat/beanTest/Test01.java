package com.beat.beanTest;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;

import com.beat.Member.model.AccountantAdminDao;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class Test01 extends HttpServlet {
	static Connection conn;
	static PreparedStatement pstmt;
	static ResultSet rs;

	public static void main(String[] args) {
		/*
		 * try{ InitialContext initCntxt = new InitialContext(); DataSource ds =
		 * (DataSource)initCntxt.lookup("java:/comp/env/jdbc/oracle");
		 * conn=ds.getConnection(); String sql="select * from test01";
		 * pstmt=conn.prepareStatement(sql); rs=pstmt.executeQuery();
		 * while(rs.next()){ System.out.println(rs.getInt("num"));
		 * System.out.println(rs.getString("name")); }
		 * 
		 * 
		 * }catch(NamingException e ){ e.printStackTrace(); } catch
		 * (SQLException e) { e.printStackTrace(); }
		 */
	

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			String sql = "select * from test01";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getInt("num"));
				System.out.println(rs.getString("name"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
