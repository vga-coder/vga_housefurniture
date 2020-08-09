package vga.mvc.inquire_reply;

/*CREATE TABLE INQUIRE_REPLY(
		INQUIRE_REPLYNO               		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRENO                     		NUMBER(10)		 NOT NULL,
		REPLY_CONTENT                 		VARCHAR2(300)		 NOT NULL,
		REPLY_RDATE                   		DATE		 NOT NULL,
		MANAGERNO                     		NUMBER(10)	 NOT NULL ,
  FOREIGN KEY (INQUIRENO) REFERENCES INQUIRE (INQUIRENO),
  FOREIGN KEY (MANAGERNO) REFERENCES MANAGER (MANAGERNO)
);

COMMENT ON TABLE INQUIRE_REPLY is '1대1문의 답변';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRE_REPLYNO is '1대1문의 답변 번호';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRENO is '문의 번호';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_CONTENT is '답변 내용';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_RDATE is '등록일';
COMMENT ON COLUMN INQUIRE_REPLY.MANAGERNO is '관리자 번호';
*/
public class Inquire_replyVO {
/*1대1문의 답변 번호*/
private int inquire_replyno;
/*문의 번호*/
private int inquireno;
/*답변 내용*/
private String reply_content;
/*등록일*/
private String reply_rdate;
/*관리자 번호*/
private int managerno;

public int getInquire_replyno() {
	return inquire_replyno;
}
public void setInquire_replyno(int inquire_replyno) {
	this.inquire_replyno = inquire_replyno;
}
public int getInquireno() {
	return inquireno;
}
public void setInquireno(int inquireno) {
	this.inquireno = inquireno;
}
public String getReply_content() {
	return reply_content;
}
public void setReply_content(String reply_content) {
	this.reply_content = reply_content;
}
public String getReply_rdate() {
	return reply_rdate;
}
public void setReply_rdate(String reply_rdate) {
	this.reply_rdate = reply_rdate;
}
public int getManagerno() {
	return managerno;
}
public void setManagerno(int managerno) {
	this.managerno = managerno;
}


}
