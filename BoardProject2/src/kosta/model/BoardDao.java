package kosta.model;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kosta.mapper.BoardMapper;

public class BoardDao {
	List<Board> list = new ArrayList<Board>();

	private static BoardDao dao = new BoardDao();

	public static BoardDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public int insertBoard(Board board){
		int re=-1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(BoardMapper.class).insertBoard(board);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return re;
	}
	
	public int selectB_id(){
		//sql섹션 객체부터 생성해야함
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		/*맥스쿼리문은 글이 없을때는 null을 리턴하는것을 주의해야한다.!!*/
		try {
			//데이터값이 없으면 0을 리턴하겠다.
			if(sqlSession.getMapper(BoardMapper.class).selectB_id()==null){
				return 0;
			} else{
				return sqlSession.getMapper(BoardMapper.class).selectB_id();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally{
			sqlSession.close();
		}
	}
	
	public List<Board>listBoard(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Board>list = null;
		try {
			list = sqlSession.getMapper(BoardMapper.class).listBoard();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return list;
	}
	
	public Board selectBoard(int b_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Board board = null;
		
		try {
			//조회수 업데이트는 커밋과 롤백해줘야할듯?
			sqlSession.getMapper(BoardMapper.class).updateHit(b_id);
			board = sqlSession.getMapper(BoardMapper.class).selectBoard(b_id);
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		return board;
	}
	
	

}