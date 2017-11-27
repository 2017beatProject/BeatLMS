package com.beat.Member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class LMSDao {
	protected Connection conn;	
	public Connection connection(){
		// ȸ�� ������ �� ����Ŭ�� ����
		// �ֿ� �޼ҵ�� ȸ������, ȸ������ ����, ȸ�� Ż��(����), ȸ������ ��ü����, ȸ������ ���� ���� ���̴�.
		// singleton ������� �ѹ��� �����ϵ��� �Ѵ�. -> conn�� null�̳� close �϶��� ����
		// ��Ĺ���� ����Ŭ ���������� initialContext�� �޾ƿ�

		try {
			if (conn == null || conn.isClosed()) {// �̱����� ���ؼ� conn�� ���� ��쿡�� ������.
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
		
		return conn;
		
	}
	
}