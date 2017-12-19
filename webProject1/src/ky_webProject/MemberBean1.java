package ky_webProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberBean1 {
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	/* MySQL 연결정보 */
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://112.216.253.122:3306/g02_st22"; 
	
	// DB연결 메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(jdbc_url,"g02_st22","g02_st22");
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
	
	public ArrayList<ZB_Member> getMemberList(){
		connect();
		ArrayList<ZB_Member> memberList = new ArrayList<ZB_Member>();
		String sql = "select * from member2";
		ResultSet rs = null;
		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
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
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			disconnect();
		}
		return memberList;
	}
	
	public boolean insertMember(ZB_Member member){
		connect();
		String sql = " insert into member2( userid, passwd, email, sex, addr, tel, regDate ) "
				+ "values( ?,?,?,?,?,?,date_format(now(), '%Y%m%d') )";
		try{
//			System.out.println( member.getUserId()+":"+member.getPasswd()+":"+
//			member.getEmail()+":"+member.getSex()+":"+member.getAddr()+":"+
//			member.getTel() );
			/*pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getSex());
			pstmt.setString(5, member.getAddr());
			pstmt.setString(6, member.getTel());*/
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}finally{
			disconnect();
		}
		return true;
	}// insertMember
	
/////////////
	public boolean getMemberIdCk( String ckId ){
		connect();
		boolean idCk = false;
		String sql = "select * from member2 where userid = ?";
		ResultSet rs = null;
		try{
			System.out.println( ckId );
			//checkKorEnc( ckId );
			//System.out.println( new String(ckId.getBytes("iso-8859-1"),"utf-8") );
			//System.out.println( ckId.decode("utf-8") );
			//System.out.println( new String(ckId.getBytes("utf-8"),"8859_1") );
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ckId );
			rs = pstmt.executeQuery();
			while(rs.next()){
				idCk = true;
				System.out.println( "ttt" );
			}
			System.out.println( "fff" );
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			disconnect();
		}
		return idCk;
	}

/////////// 한글확인
	public void checkKorEnc(String word){
		String[] arr = {"euc-kr","utf-8","iso-8859-1","ksc5601","x-windows-949"};
		try{
			 for( int i =0 ; i < arr.length; i++){
				 for(int z=0; z < arr.length ; z++){
					 if( i != z)
					 System.out.println( arr[i]+"=>"+ arr[z]+ " \r\n ==> " +new String(word.getBytes(arr[i]),arr[z]));
				 }
			 } 
		}catch(Exception e){
			 System.out.println(e);
		}
	}
}








