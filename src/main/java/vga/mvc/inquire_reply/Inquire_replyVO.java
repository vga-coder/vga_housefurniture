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

COMMENT ON TABLE INQUIRE_REPLY is '1��1���� �亯';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRE_REPLYNO is '1��1���� �亯 ��ȣ';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRENO is '���� ��ȣ';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_CONTENT is '�亯 ����';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_RDATE is '�����';
COMMENT ON COLUMN INQUIRE_REPLY.MANAGERNO is '������ ��ȣ';
*/
public class Inquire_replyVO {
/*1��1���� �亯 ��ȣ*/
private int inquire_replyno;
/*���� ��ȣ*/
private int inquireno;
/*�亯 ����*/
private String reply_content;
/*�����*/
private String reply_rdate;
/*������ ��ȣ*/
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
