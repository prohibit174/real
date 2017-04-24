package kosta.model;

import java.io.InputStream;
import java.io.Reader;
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

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kosta.mapper.BoardMapper;


public class BoardDao {
	private static BoardDao dao = new BoardDao();
	private static int count = 1;

	public static BoardDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory(){
		String resource ="mybatis-config.xml";
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public void insertBoard(Board board) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(BoardMapper.class).insertBoard(board);
			if(re > 0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}

	public List<Board> listBoard(Search search) throws Exception {
		SqlSession session = getSqlSessionFactory().openSession();
		try {
			return session.getMapper(BoardMapper.class).listBoard(search);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	}

	public void updateBoard(Board board) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(BoardMapper.class).updateBoard(board);
			if(re > 0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
	
	public Board detailBoard(int seq) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		try {
			return session.getMapper(BoardMapper.class).detailBoard(seq);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			session.close();
		}
	
	}
	
	public void deleteBoard(Board board) throws Exception{
		SqlSession session = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = session.getMapper(BoardMapper.class).deleteBoard(board);
			if(re > 0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	}
}
