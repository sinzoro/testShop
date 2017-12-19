package ky_webProject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ZB_MemberDAO {

	// sql
	Connection conn = null;
	PreparedStatement pstmt = null;

	// conn
	public void connect() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/mysql");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}// con
	// close
	public void disconnect() {
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// colose

	public int loginCheck(ZB_Member member) {
		int result = -1; // -1 아이디 없음 0 암호 틀림 1 아이디 암호 정상
		connect();
		String sql = "select Id, passwd from zb_member where id = ?";
		ResultSet rs = null;
		System.out.println("member.getLoginId():" + member.getLoginId());
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getLoginId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String dbPass = rs.getString("passwd");
				System.out.println( ":"+ dbPass );
				if (dbPass.equals(member.getLoginPasswd()) ) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return result;
	} // loginCheck
	
	public boolean insertMember(ZB_Member member) {
		connect();
		String sql = " insert into zb_member "
				+ "values(?,?,?,?,?,?,date_format(now(), '%Y%m%d'))";
		try {
			/*pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getSex());
			pstmt.setString(5, member.getAddr());
			pstmt.setString(6, member.getTel());
			pstmt.setTimestamp(5, article.getReg_date());
			*/
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	} // insertMember
	
	public ArrayList<ZB_Member> getMemberList() {
		connect();
		ArrayList<ZB_Member> memberList = new ArrayList<ZB_Member>();
		String sql = "select * from zb_member";
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				/*ZB_Member member = new ZB_Member();
				member.setUserId(rs.getString("userId"));
				member.setPasswd(rs.getString("passwd"));
				member.setEmail(rs.getString("email"));
				member.setSex(rs.getString("sex"));
				member.setAddr(rs.getString("addr"));
				member.setTel(rs.getString("tel"));
				member.setRegDate(rs.getString("regDate"));
				memberList.add(member);*/
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return memberList;
	} // getMemberList
	
	
	
}

