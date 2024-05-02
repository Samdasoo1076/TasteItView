package db;

import java.sql.*;

public class MemberDao {

		public String isMember(String id, String pw) {
			String name = null;
			String sql = "select name from TASTE.member where id=? and pw=?";
			
			try {
				Connection conn = ConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				ResultSet rs = pstmt.executeQuery();

				if(rs.next())
				{
					name = rs.getString(1);
				}
				
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
			return name;
		}
		
}
