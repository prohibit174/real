package kosta.model;

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

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class BoardDao {
	private static BoardDao dao = new BoardDao();
	private static SqlMapClient client;
	private static int count = 1;

	public static BoardDao getInstance() {
		try {
			Reader reader = Resources.getResourceAsReader("kosta/ibatis/SqlMapConfig.xml");
			client = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dao;
	}


	public void insertBoard(Board board) throws Exception {
		client.insert("insertBoard", board);
	}

	public List listBoard(Search search) throws Exception{
		return client.queryForList("listBoard", search);
	}

	public void updateBoard(Board board) throws Exception{
		client.update("updateBoard", board);
	}
	public Board detailBoard(int seq) throws Exception{
		return (Board)client.queryForObject("detailBoard", seq);

	}
}
