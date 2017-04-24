package kosta.model;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
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

 
   

}