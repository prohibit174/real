package kosta.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kosta.mapper.BoardMapper;

public class BoardDao {
	public static BoardDao dao = new BoardDao();
	public static BoardDao getInstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
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
		SqlSession sqlsession = getSqlSessionFactory().openSession();		
		try {
			re = sqlsession.getMapper(BoardMapper.class).insertBoard(board);
			if(re > 0){
				sqlsession.commit();
			}else{
				sqlsession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		return re;
	}
	

		public int selectB_id(){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			try {
				if(sqlSession.getMapper(BoardMapper.class).selectB_id() == null){
					return 0;
				}else{
					return sqlSession.getMapper(BoardMapper.class).selectB_id();
				}
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			}
		}
		
		public List<Board> listBoard(Search search){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			List<Board> list = null;
			try {
				list = sqlSession.getMapper(BoardMapper.class).listBoard(search);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return list;
		}
		
		public Board selectBoard(int b_id){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			Board board = null;
			try {
				board = sqlSession.getMapper(BoardMapper.class).selectBoard(b_id);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return board;
		}
		
		public int updateHit(int b_id){
			int re = -1;
			SqlSession sqlsession = getSqlSessionFactory().openSession();		
			try {
				re = sqlsession.getMapper(BoardMapper.class).updateHit(b_id);
				if(re > 0){
					sqlsession.commit();
				}else{
					sqlsession.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlsession.close();
			}
			return re;
		}
		
		public int updateCheck(Board board){
			int re = -1;
			SqlSession sqlsession = getSqlSessionFactory().openSession();		
			try {
				re = sqlsession.getMapper(BoardMapper.class).updateCheck(board);
				if(re > 0){
					sqlsession.commit();
				}else{
					sqlsession.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlsession.close();
			}
			return re;
		}
		
		public int updateBoard(Board board){
			int re = -1;
			SqlSession sqlsession = getSqlSessionFactory().openSession();		
			try {
				re = sqlsession.getMapper(BoardMapper.class).updateBoard(board);
				if(re > 0){
					sqlsession.commit();
				}else{
					sqlsession.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlsession.close();
			}
			return re;
		}
		
		public int insertReply(Reply reply){
			int re = -1;
			SqlSession sqlsession = getSqlSessionFactory().openSession();		
			try {
				re = sqlsession.getMapper(BoardMapper.class).insertReply(reply);
				if(re > 0){
					sqlsession.commit();
				}else{
					sqlsession.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlsession.close();
			}
			return re;
		}
		
		public int selectR_num(){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			try {
				if(sqlSession.getMapper(BoardMapper.class).selectR_num() == null){
					return 0;
				}else{
					return sqlSession.getMapper(BoardMapper.class).selectR_num();
				}
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			}
		}
		
		public List<Reply> selectReplyBoard(int b_id){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			List<Reply> list = null;
			try {
				list = sqlSession.getMapper(BoardMapper.class).selectReplyBoard(b_id);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return list;
		}
}
