package ch06_oracleJDBC;

import java.sql.*;
import java.util.ArrayList;

public class UseBeanDBJob {
	private final String JDBC_DRIVER = "oracle.jdbc.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String USER = "tjoeun";
	private final String PASS = "1234";
	
	public UseBeanDBJob() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Bean_job> getList() {
		ArrayList<Bean_job> alist = new ArrayList<Bean_job>();
		
		try {
			Connection con = DriverManager.getConnection(JDBC_URL, USER, PASS);
			Statement st = con.createStatement();
			String query = "select * from job";
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				Bean_job bean = new Bean_job();
//				bean.setDept_id(rs.getString(1));
				bean.setJob_code(rs.getString("job_code"));
				bean.setJob_name(rs.getString("job_name"));
				alist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return alist;
	}
	
}
