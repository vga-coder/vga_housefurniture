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

COMMENT ON TABLE NOTE is '��������';
COMMENT ON COLUMN NOTE.NOTENO is '�������׹�ȣ';
COMMENT ON COLUMN NOTE.NOTE_TITLE is '�������� ����';
COMMENT ON COLUMN NOTE.NOTE_CONTENT is '�������� ����';
COMMENT ON COLUMN NOTE.NOTE_SEQNO is '�������� ��¼���';
COMMENT ON COLUMN NOTE.NOTE_DATE is '�����';
COMMENT ON COLUMN NOTE.MANAGERNO is '������ ��ȣ';
COMMENT ON COLUMN NOTE.NOTECATENO is '�������� ī�װ� ��ȣ';
*/
public class NoteVO {
/*�������׹�ȣ*/
private int noteno;
/*�������� ����*/
private String note_title;
/*�������� ����*/
private String note_content;
/*�������� ��¼���*/
private int note_seqno;
/*�����*/
private String note_date;
/*�����ڹ�ȣ*/
private int managerno;
/*�������� ī�װ� ��ȣ*/
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
