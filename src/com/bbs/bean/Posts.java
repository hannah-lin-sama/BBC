package com.bbs.bean;

public class Posts {
	int fid;
	String title;
	String content;
	String user_name;
	int  total_reply;
	String BackNews;
	public String getBackNews() {
		return BackNews;
	}
	public void setBackNews(String BackNews) {
		this.BackNews = BackNews;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public int getTotal_reply() {
		return total_reply;
	}
	public void setTotal_reply(int totalReply) {
		total_reply = totalReply;
	}
}
