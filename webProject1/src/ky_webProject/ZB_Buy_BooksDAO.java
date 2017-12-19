package ky_webProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ZB_Buy_BooksDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	/* MySQL 연결정보 */
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://112.216.253.122:3306/zipcode"; 
	
	// DB연결 메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url,"zipcode","zipcode");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
   public ArrayList<ZB_Addr> getAddrList(String dong){
  String sql = "select zipcode, sido, gugun, dong, bunji from zipcode where dong like ?";
  ResultSet rs = null;
  ArrayList<ZB_Addr> addrList = new ArrayList<ZB_Addr>();
	     connect();
	     try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dong+"%");
			rs = pstmt.executeQuery();
			while(rs.next()){
				ZB_Addr addr = new ZB_Addr();
				addr.setZipcode(rs.getString("zipcode"));
				addr.setSido(rs.getString("sido"));
				addr.setGugun(rs.getString("gugun"));
				addr.setDong(rs.getString("dong"));
				addr.setBunji(rs.getString("bunji"));
				addrList.add(addr);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			disconnect();
		}
	     return addrList;
   }
}

















