package kosta.bean;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLData;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {
	private static BoardDao dao = new BoardDao();
	private static int count = 1;

	public static BoardDao getInstance() {
		return dao;
	}

	public Connection getConnection() {
		DataSource ds = null;
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
			return ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	public int insertBoard(Board b) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int re = -1;
		
		

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta152";
		String password = "1234";

		String sql = "insert into board values(board_seq.nextval,?,?,?,sysdate,?)";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			conn = DriverManager.getConnection(url, user, password);

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getWriter());
			pstmt.setString(2, b.getTitle());
			pstmt.setString(3, b.getContents());
			//pstmt.setDate(4, null);
		    pstmt.setInt(4, b.getHitcount()); 

			re = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e2) {
				}
				if (conn != null) {
					try {
						conn.close();
					} catch (Exception e2) {
					}
				}
			}

		}
	     return re;
	}

	public ArrayList<Board> listBoard() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Board> list = null;
		String sql = "select * from board";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<Board>();
			while (rs.next()) {
				Board b = new Board();
				b.setSeq(rs.getInt("seq"));
				b.setWriter(rs.getString("writer"));
				b.setTitle(rs.getString("title"));
				b.setContents(rs.getString("contents"));
				b.setDate(rs.getString("date"));
				b.setHitcount(rs.getInt("hitcount"));

				list.add(b);
			}
		} catch (Exception e) {

			
		}
		return list;
	}

	public Board detailBoard(int seq){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from board where seq=?";
		Board b = new Board();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				b.setSeq(rs.getInt("seq"));
				b.setWriter(rs.getString("writer"));
				b.setTitle(rs.getString("title"));
				b.setContents(rs.getString("contents"));
				b.setDate(rs.getString("date"));
				b.setHitcount(rs.getInt("hitcount"));
			}
			
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return b;
	}
}
