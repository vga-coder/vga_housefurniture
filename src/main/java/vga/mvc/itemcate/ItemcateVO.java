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

COMMENT ON TABLE ITEMCATE is '상품 카테고리';
COMMENT ON COLUMN ITEMCATE.ITEMCATENO is '상품 카테고리번호';
COMMENT ON COLUMN ITEMCATE.NAME is '카테고리 이름';
COMMENT ON COLUMN ITEMCATE.VISIBLENO is '출력 순서';
COMMENT ON COLUMN ITEMCATE.VISIBLE is '출력 모드';
COMMENT ON COLUMN ITEMCATE.ITEMCNT is '등록된 상품 수';
COMMENT ON COLUMN ITEMCATE.RDATE is '카테고리 생성일';
COMMENT ON COLUMN ITEMCATE.GRPNO is '카테고리 그룹 번호';
*/
public class ItemcateVO {
/*상품 카테고리번호*/
private int itemcateno;
/*카테고리 이름*/
private String name;
/*출력 순서*/
private int visibleno;
/*출력 모드*/
private String visible;
/*등록된 상품 수*/
private int itemcnt;
/*카테고리 생성일*/
private String rdate;
/*카테고리 그룹 번호*/
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
