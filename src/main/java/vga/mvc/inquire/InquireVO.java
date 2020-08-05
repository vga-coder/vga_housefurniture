package vga.mvc.inquire;

/*CREATE TABLE INQUIRE(
		INQUIRENO                     		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_TITLE                 		VARCHAR2(100)		 NOT NULL,
		INQUIRE_CONTENT               		VARCHAR2(300)		 NOT NULL,
		INQUIRE_RDATE                 		DATE		 NOT NULL,
		MEMNO                         		NUMBER(10)		NOT NULL ,
		INQUIRECATENO                   		NUMBER(10)	NOT NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO),
  FOREIGN KEY (INQUIRECATENO) REFERENCES INQUIRECATE (INQUIRECATENO)
);

COMMENT ON TABLE INQUIRE is '1��1����';
COMMENT ON COLUMN INQUIRE.INQUIRENO is '���� ��ȣ';
COMMENT ON COLUMN INQUIRE.INQUIRE_TITLE is '���� ����';
COMMENT ON COLUMN INQUIRE.INQUIRE_CONTENT is '���� ����';
COMMENT ON COLUMN INQUIRE.INQUIRE_RDATE is '�����';
COMMENT ON COLUMN INQUIRE.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN INQUIRE.INQUIRECATENO is '���� ī�װ� ��ȣ';
*/
public class InquireVO {
/*���� ��ȣ*/
private int inquireno;
/*���� ����*/
private String inquire_title;
/*���� ����*/
private String inquire_content;
/*�����*/
private String inquire_rdate;
/*ȸ����ȣ*/
private int memno;
/*���� ī�װ� ��ȣ*/
private int inquirecateno;

public int getInquireno() {
	return inquireno;
}
public void setInquireno(int inquireno) {
	this.inquireno = inquireno;
}
public String getInquire_title() {
	return inquire_title;
}
public void setInquire_title(String inquire_title) {
	this.inquire_title = inquire_title;
}
public String getInquire_content() {
	return inquire_content;
}
public void setInquire_content(String inquire_content) {
	this.inquire_content = inquire_content;
}
public String getInquire_rdate() {
	return inquire_rdate;
}
public void setInquire_rdate(String inquire_rdate) {
	this.inquire_rdate = inquire_rdate;
}
public int getMemno() {
	return memno;
}
public void setMemno(int memno) {
	this.memno = memno;
}
public int getInquirecateno() {
	return inquirecateno;
}
public void setInquirecateno(int inquirecateno) {
	this.inquirecateno = inquirecateno;
}

}
