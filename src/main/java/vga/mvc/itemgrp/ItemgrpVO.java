package vga.mvc.itemgrp;

/*CREATE TABLE ITEMGRP(
		GRPNO                         		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR2(100)		 NOT NULL,
		VISIBLENO                     		NUMBER(7)		 NOT NULL,
		VISIBLE                       		CHAR(1)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL
);

COMMENT ON TABLE ITEMGRP is '��ǰ ī�װ� �׷�';
COMMENT ON COLUMN ITEMGRP.GRPNO is 'ī�װ� �׷� ��ȣ';
COMMENT ON COLUMN ITEMGRP.NAME is '�׷� �̸�';
COMMENT ON COLUMN ITEMGRP.VISIBLENO is '��� ����';
COMMENT ON COLUMN ITEMGRP.VISIBLE is '��� ���';
COMMENT ON COLUMN ITEMGRP.RDATE is '�׷� ������';
*/
public class ItemgrpVO {
/*ī�װ� �׷� ��ȣ*/
private int grpno;
/*�׷� �̸�*/
private String name;
/*��� ����*/
private int visibelno;
/*��� ���*/
private String visible;
/*�׷� ������*/
private String rdate;

public int getGrpno() {
	return grpno;
}
public void setGrpno(int grpno) {
	this.grpno = grpno;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getVisibelno() {
	return visibelno;
}
public void setVisibelno(int visibelno) {
	this.visibelno = visibelno;
}
public String getVisible() {
	return visible;
}
public void setVisible(String visible) {
	this.visible = visible;
}
public String getRdate() {
	return rdate;
}
public void setRdate(String rdate) {
	this.rdate = rdate;
}


}
