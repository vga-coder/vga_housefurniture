package vga.mvc.notecate;

/*CREATE TABLE NOTECATE(
		NOTECATENO                    		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NOTECATE_NAME                 		VARCHAR2(50)		 NOT NULL,
		NOTECATE_CONTENT              		CLOB		 NOT NULL,
		NOTECATECNT                   		NUMBER(10)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE NOTECATE is '�������� ī�װ�';
COMMENT ON COLUMN NOTECATE.NOTECATENO is '�������� ī�װ� ��ȣ';
COMMENT ON COLUMN NOTECATE.NOTECATE_NAME is '�̸�';
COMMENT ON COLUMN NOTECATE.NOTECATE_CONTENT is '����';
COMMENT ON COLUMN NOTECATE.NOTECATECNT is '��ϵ� �������� ��';
*/
public class NotecateVO {
/*�������� ī�װ� ��ȣ*/
private int notecateno;
/*�̸�*/
private String notecate_name;
/*����*/
private String notecate_content;
/*��ϵ� �������� ��*/
private int notecnt;

public int getNotecateno() {
	return notecateno;
}
public void setNotecateno(int notecateno) {
	this.notecateno = notecateno;
}
public String getNotecate_name() {
	return notecate_name;
}
public void setNotecate_name(String notecate_name) {
	this.notecate_name = notecate_name;
}
public String getNotecate_content() {
	return notecate_content;
}
public void setNotecate_content(String notecate_content) {
	this.notecate_content = notecate_content;
}
public int getNotecnt() {
	return notecnt;
}
public void setNotecnt(int notecnt) {
	this.notecnt = notecnt;
}

}
