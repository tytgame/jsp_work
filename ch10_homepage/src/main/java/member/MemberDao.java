package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DBConnectionMgr;

public class MemberDao {
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public boolean loginMember(String id, String pwd) {
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from member where id=? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public boolean checkId(String id) {
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean insertMember(Member memberBean) {
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberBean.getId());
			pstmt.setString(2, memberBean.getPwd());
			pstmt.setString(3, memberBean.getName());
			pstmt.setString(4, memberBean.getGender());
			pstmt.setString(5, memberBean.getBirthday());
			pstmt.setString(6, memberBean.getEmail());
			pstmt.setString(7, memberBean.getZipcode());
			pstmt.setString(8, memberBean.getAddress());
			pstmt.setString(9, memberBean.getDetailAddress());
			pstmt.setString(10, String.join(" ", memberBean.getHobby()));
			pstmt.setString(11, memberBean.getJob());
			
			/*
			 * String hobbyDB = String.join(" ", memberBean.getHobby()); String hobby[] =
			 * hobbyDB.split(" "); System.out.println(hobby[0]);
			 * System.out.println(hobby[1]);
			*/
			
//			pstmt.executeUpdate();	// 반환값은 update가 되었으면 1 반환, 안됐으면 0 반환
			if(pstmt.executeUpdate() == 1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
