package kosta.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
   private static MemberDao dao = new MemberDao();

   public static MemberDao getInstance() {
      return dao;
   }
   
   //DBCP 방식으로 Connection 객체 구하기
   public Connection getConnection(){
	   DataSource ds = null;
	   try {
		  Context ctx = new InitialContext();
		  ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		  return ds.getConnection();
	} catch (Exception e) {
		e.printStackTrace();
	}
	   
	   return null;
   }
   
   public List<Member> listMember(){
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   List<Member> list = null;
	   String sql = "select * from member";
	   
	   try {
		   conn = getConnection();
		   pstmt = conn.prepareStatement(sql);
		   rs = pstmt.executeQuery();
		   list =  new ArrayList<Member>();
		   while(rs.next()){
			   Member m = new Member();
			   m.setId(rs.getString("id"));
			   m.setPass(rs.getString("pass"));
			   m.setName(rs.getString("name"));
			   m.setAge(rs.getInt("age"));
			   
			   list.add(m);
		   }
	} catch (Exception e) {
		e.printStackTrace();
	}
	   
	   return null;
   }
   public int insertMember(Member m) {
      // 커넥션 객체 만들기
      Connection conn = null;

      // 프리페얼스테이트먼트 객체사용하면 (" 같은거 구분)편리함
      PreparedStatement pstmt = null;

      int re = -1;

      // URL, 계정ID, 계정 pass 가 필요하다.
      String url = "jdbc:oracle:thin:@localhost:1521:XE";
      String user = "kosta152";
      String password = "1234";

      // 들어오는 값이 모르기때문에 ?처리
      String sql = "insert into member values(?,?,?,?)";

      try {
         // 1단계 드라이버 로딩 (오라클 드라이버를 사용한다.)
         Class.forName("oracle.jdbc.driver.OracleDriver");

         // 2단계 Connection 객체 구하기
         conn = DriverManager.getConnection(url, user, password);

         // 3단계 PrepareStatement 객체 구하기
         // ?안에 들어가는 값을 set메소드를 통해서 넣을 수 있다. ?순서대로 1,2,3,4, 넣어야함
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, m.getId());
         pstmt.setString(2, m.getPass());
         pstmt.setString(3, m.getName());
         pstmt.setInt(4, m.getAge());

         // 4단계 쿼리실행
         re = pstmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         if (pstmt != null) {
            try {
               pstmt.close();
            } catch (Exception e2) {
            }
         }
         if (conn != null) {
            try {
               conn.close();
            } catch (Exception e2) {
            }
         }
      }

      return re;
   }
}