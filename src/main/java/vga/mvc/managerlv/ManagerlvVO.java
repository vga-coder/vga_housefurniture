package vga.mvc.managerlv;

/*
CREATE TABLE managerlv(
      managerlvno                     NUMBER(10)       NOT NULL       PRIMARY KEY,
      managerlv_name                   VARCHAR2(20)       NOT NULL,
      managerlv_pay                   NUMBER(20)       NOT NULL,
      managerlv_do                     CLOB NULL
);

COMMENT ON TABLE managerlv is '관리자 등급';
COMMENT ON COLUMN managerlv.managerlvno is '관리자 등급번호';
COMMENT ON COLUMN managerlv.managerlv_name is '관리자 등급이름';
COMMENT ON COLUMN managerlv.managerlv_pay is '관리자 등급 별 연봉';
COMMENT ON COLUMN managerlv.managerlv_do is '관리자 등급업무';
 */

public class ManagerlvVO {
/** 관리자 등급번호*/
private int managerlvno;
/** 관리자 등급이름*/
private String managerlv_name;
/** 관리자 등급 별 연봉*/
private int managerlv_pay;
/** 관리자 등급업무*/
private String managerlv_do;

public int getManagerlvno() {
	return managerlvno;
}
public void setManagerlvno(int managerlvno) {
	this.managerlvno = managerlvno;
}
public String getManagerlv_name() {
	return managerlv_name;
}
public void setManagerlv_name(String managerlv_name) {
	this.managerlv_name = managerlv_name;
}
public int getManagerlv_pay() {
	return managerlv_pay;
}
public void setManagerlv_pay(int managerlv_pay) {
	this.managerlv_pay = managerlv_pay;
}
public String getManagerlv_do() {
	return managerlv_do;
}
public void setManagerlv_do(String managerlv_do) {
	this.managerlv_do = managerlv_do;
}




}
