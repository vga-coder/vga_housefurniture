package vga.mvc.inquirecate;

/*CREATE TABLE INQUIRECATE(
		INQUIRECATENO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRECATE_NAME                  		VARCHAR2(50)		 NOT NULL,
		INQUIRECATE_CONTENT
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '���� ī�װ�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATENO is '���� ī�װ� ��ȣ';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '�̸�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE_CONTENT is '����';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '��ϵ� ���� ��';
*/
public class InquirecateVO {
/*���� ī�װ� ��ȣ*/
private int inquirecateno;
/*�̸�*/
private String inquirecate_name;
/*����*/
private String inquirecate_content;
/*��ϵ� ���� ��*/
private int inquirecnt;

public int getInquirecateno() {
	return inquirecateno;
}
public void setInquirecateno(int inquirecateno) {
	this.inquirecateno = inquirecateno;
}
public String getInquirecate_name() {
	return inquirecate_name;
}
public void setInquirecate_name(String inquirecate_name) {
	this.inquirecate_name = inquirecate_name;
}
public String getInquirecate_content() {
	return inquirecate_content;
}
public void setInquirecate_content(String inquirecate_content) {
	this.inquirecate_content = inquirecate_content;
}
public int getInquirecnt() {
	return inquirecnt;
}
public void setInquirecnt(int inquirecnt) {
	this.inquirecnt = inquirecnt;
}




}
