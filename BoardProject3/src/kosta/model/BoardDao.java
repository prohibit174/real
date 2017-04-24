package kosta.model;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kosta.mapper.BoardMapper;

public class BoardDao {
	private static BoardDao dao = new BoardDao();

	public static BoardDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public int insertBoard(Board board){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(BoardMapper.class).insertBoard(board);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return re;
	}
	
	public int selectB_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(BoardMapper.class).selectB_id() == null){
				return 0 ;
			}else{
				return sqlSession.getMapper(BoardMapper.class).selectB_id();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}finally {
			sqlSession.close();
		}
	}
	
	public List<Board> listBoard(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Board> list = null;
		try {
			list = sqlSession.getMapper(BoardMapper.class).listBoard();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return list;		
	}
	
	public Board selectBoard(int b_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Board board = null;
		try {
			board = sqlSession.getMapper(BoardMapper.class).selectBoard(b_id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return board;
		
	}
	
	public int updateHitBoard(int b_id){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		try {
			re = sqlSession.getMapper(BoardMapper.class).updateHitBoard(b_id);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return re;
	}
	public void updateStep(HashMap<String, Integer> map){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(BoardMapper.class).updateStep(map);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
	}
	public int updateCheck(Board board){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(BoardMapper.class).updateCheck(board);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}		
		return re;		
		
	}
	public int updateBoard(Board board){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		try {
			re = sqlSession.getMapper(BoardMapper.class).updateBoard(board);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return re;
	}
}
