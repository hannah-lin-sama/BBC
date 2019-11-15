package com.bbs.bean;

public class Reply {
	int reply_id;
	String reply_content;
//	String reply_time;
	String user_name;
	int fid;
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int replyId) {
		reply_id = replyId;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String replyContent) {
		reply_content = replyContent;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	
}
