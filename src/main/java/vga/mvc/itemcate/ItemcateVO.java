package vga.mvc.itemcate;

/*CREATE TABLE ITEMCATE(
		ITEMCATENO                    		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR2(100)		 NOT NULL,
		VISIBLENO                     		NUMBER(7)		 NOT NULL,
		VISIBLE                       		CHAR(1)		 NOT NULL,
		ITEMCNT                       		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		GRPNO                         		NUMBER(10)		 NULL ,
  FOREIGN KEY (GRPNO) REFERENCES ITEMGRP (GRPNO)
);

COMMENT ON TABLE ITEMCATE is '��ǰ ī�װ�';
COMMENT ON COLUMN ITEMCATE.ITEMCATENO is '��ǰ ī�װ���ȣ';
COMMENT ON COLUMN ITEMCATE.NAME is 'ī�װ� �̸�';
COMMENT ON COLUMN ITEMCATE.VISIBLENO is '��� ����';
COMMENT ON COLUMN ITEMCATE.VISIBLE is '��� ���';
COMMENT ON COLUMN ITEMCATE.ITEMCNT is '��ϵ� ��ǰ ��';
COMMENT ON COLUMN ITEMCATE.RDATE is 'ī�װ� ������';
COMMENT ON COLUMN ITEMCATE.GRPNO is 'ī�װ� �׷� ��ȣ';
*/
public class ItemcateVO {
/*��ǰ ī�װ���ȣ*/
private int itemcateno;
/*ī�װ� �̸�*/
private String name;
/*��� ����*/
private int visibleno;
/*��� ���*/
private String visible;
/*��ϵ� ��ǰ ��*/
private int itemcnt;
/*ī�װ� ������*/
private String rdate;
/*ī�װ� �׷� ��ȣ*/
private int grpno;
public int getItemcateno() {
	return itemcateno;
}
public void setItemcateno(int itemcateno) {
	this.itemcateno = itemcateno;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getVisibleno() {
	return visibleno;
}
public void setVisibleno(int visibleno) {
	this.visibleno = visibleno;
}
public String getVisible() {
	return visible;
}
public void setVisible(String visible) {
	this.visible = visible;
}
public int getItemcnt() {
	return itemcnt;
}
public void setItemcnt(int itemcnt) {
	this.itemcnt = itemcnt;
}
public String getRdate() {
	return rdate;
}
public void setRdate(String rdate) {
	this.rdate = rdate;
}
public int getGrpno() {
	return grpno;
}
public void setGrpno(int grpno) {
	this.grpno = grpno;
}

}
