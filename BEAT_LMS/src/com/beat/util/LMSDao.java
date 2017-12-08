package com.beat.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class LMSDao {
	protected static Connection conn;
	private static PreparedStatement pstmt;
	private static ResultSet rs;
	
	public LMSDao(){
		// 회원 가입할 때 오라클에 연결
		// 주요 메소드는 회원가입, 회원정보 수정, 회원 탈퇴(삭제), 회원정보 전체열람, 회원정보 개별 열람 등이다.
		// singleton 방식으로 한번만 접근하도록 한다. -> conn이 null이나 close 일때만 생성
		// 톰캣에서 오라클 접속정보를 initialContext로 받아옴
		try {
			if (conn == null || conn.isClosed()) {// 싱글톤을 위해서 conn이 없는 경우에만 열린다.
				InitialContext initCont = new InitialContext();
				DataSource ds = (DataSource) initCont
						.lookup("java:/comp/env/jdbc/oracle");
				conn = ds.getConnection();
			}
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	static protected void destroy() { // 연결종료 메소드
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
