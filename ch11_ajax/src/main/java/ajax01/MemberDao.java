package ajax01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	// id에 해당하는 데이터 한 행 얻어오기
	public Member getMember(String id) {
		Member mlist = new Member();
		
		try {
			con = pool.getConnection();
			sql = "select id, name, gender, email from member where id=" + id;
			
			rs = con.createStatement().executeQuery(sql);
			
			if(rs.next()) {
				mlist.setId(rs.getString("id"));
				mlist.setName(rs.getString("name"));
				mlist.setGender(rs.getString("gender"));
				mlist.setEmail(rs.getString("gender"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return mlist;
		
	}
	/*
	 * // 전체 멤버 데이터 얻어오기 public ArrayList<Member> getAllMember() {
	 * 
	 * }
	 */
	public ArrayList<Member> getAllMember() {
		ArrayList<Member> alist = new ArrayList<Member>();
		
		try {
			con = pool.getConnection();
			sql = "select * from member";
			
			rs = con.createStatement().executeQuery(sql);
			while(rs.next()) {
				Member member = new Member();
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setGender(rs.getString("gender"));
				member.setBirthday(rs.getString("birthday"));
				member.setEmail(rs.getString("email"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress(rs.getString("address"));
				member.setDetailAddress(rs.getString("detailaddress"));
//				member.setHobby(rs.getString("hobby"));
				member.setJob(rs.getString("job"));
				alist.add(member);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return alist;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
