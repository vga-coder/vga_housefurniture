package vga.mvc.note;

/*CREATE TABLE NOTE(
		NOTENO                        		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NOTE_TITLE                    		VARCHAR2(50)		 NOT NULL,
		NOTE_CONTENT                  		CLOB		 NOT NULL,
		NOTE_SEQNO                    		NUMBER(10)		 NOT NULL,
		NOTE_DATE                     		DATE		 NOT NULL,
		MANAGERNO                     		NUMBER(10)		 NOT NULL,
		NOTECATENO                    		NUMBER(10)		NOT NULL ,
  FOREIGN KEY (MANAGERNO) REFERENCES MANAGER (MANAGERNO),
  FOREIGN KEY (NOTECATENO) REFERENCES NOTECATE (NOTECATENO)
);

COMMENT ON TABLE NOTE is '공지사항';
COMMENT ON COLUMN NOTE.NOTENO is '공지사항번호';
COMMENT ON COLUMN NOTE.NOTE_TITLE is '공지사항 제목';
COMMENT ON COLUMN NOTE.NOTE_CONTENT is '공지사항 내용';
COMMENT ON COLUMN NOTE.NOTE_SEQNO is '공지사항 출력순서';
COMMENT ON COLUMN NOTE.NOTE_DATE is '등록일';
COMMENT ON COLUMN NOTE.MANAGERNO is '관리자 번호';
COMMENT ON COLUMN NOTE.NOTECATENO is '공지사항 카테고리 번호';
*/
public class NoteVO {
/*공지사항번호*/
private int noteno;
/*공지사항 제목*/
private String note_title;
/*공지사항 내용*/
private String note_content;
/*공지사항 출력순서*/
private int note_seqno;
/*등록일*/
private String note_date;
/*관리자번호*/
private int managerno;
/*공지사항 카테고리 번호*/
private int notecateno;

public int getNoteno() {
	return noteno;
}
public void setNoteno(int noteno) {
	this.noteno = noteno;
}
public String getNote_title() {
	return note_title;
}
public void setNote_title(String note_title) {
	this.note_title = note_title;
}
public String getNote_content() {
	return note_content;
}
public void setNote_content(String note_content) {
	this.note_content = note_content;
}
public int getNote_seqno() {
	return note_seqno;
}
public void setNote_seqno(int note_seqno) {
	this.note_seqno = note_seqno;
}
public String getNote_date() {
	return note_date;
}
public void setNote_date(String note_date) {
	this.note_date = note_date;
}
public int getManagerno() {
	return managerno;
}
public void setManagerno(int managerno) {
	this.managerno = managerno;
}
public int getNotecateno() {
	return notecateno;
}
public void setNotecateno(int notecateno) {
	this.notecateno = notecateno;
}

}
