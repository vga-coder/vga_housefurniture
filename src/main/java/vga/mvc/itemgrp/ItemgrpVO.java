package vga.mvc.itemgrp;

/*CREATE TABLE ITEMGRP(
		GRPNO                         		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR2(100)		 NOT NULL,
		VISIBLENO                     		NUMBER(7)		 NOT NULL,
		VISIBLE                       		CHAR(1)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL
);

COMMENT ON TABLE ITEMGRP is '상품 카테고리 그룹';
COMMENT ON COLUMN ITEMGRP.GRPNO is '카테고리 그룹 번호';
COMMENT ON COLUMN ITEMGRP.NAME is '그룹 이름';
COMMENT ON COLUMN ITEMGRP.VISIBLENO is '출력 순서';
COMMENT ON COLUMN ITEMGRP.VISIBLE is '출력 모드';
COMMENT ON COLUMN ITEMGRP.RDATE is '그룹 생성일';
*/
public class ItemgrpVO {
/*카테고리 그룹 번호*/
private int grpno;
/*그룹 이름*/
private String name;
/*출력 순서*/
private int visibelno;
/*출력 모드*/
private String visible;
/*그룹 생성일*/
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
