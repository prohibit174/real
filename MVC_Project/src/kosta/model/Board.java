package kosta.model;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {

	private int seq;
	private String writer;
	private String title;
	private String contents;
	private String date;
	private int hitcount;
	

	public Board(){}


	public Board(int seq, String writer, String title, String contents, String date, int hitcount) {
		super();
		this.seq = seq;
		this.writer = writer;
		this.title = title;
		this.contents = contents;
		this.date = date;
		this.hitcount = hitcount;
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public int getHitcount() {
		return hitcount;
	}


	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}

	
}
