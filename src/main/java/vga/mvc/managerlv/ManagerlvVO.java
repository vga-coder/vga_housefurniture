package vga.mvc.managerlv;

/*
CREATE TABLE managerlv(
      managerlvno                     NUMBER(10)       NOT NULL       PRIMARY KEY,
      managerlv_name                   VARCHAR2(20)       NOT NULL,
      managerlv_pay                   NUMBER(20)       NOT NULL,
      managerlv_do                     CLOB NULL
);

COMMENT ON TABLE managerlv is '������ ���';
COMMENT ON COLUMN managerlv.managerlvno is '������ ��޹�ȣ';
COMMENT ON COLUMN managerlv.managerlv_name is '������ ����̸�';
COMMENT ON COLUMN managerlv.managerlv_pay is '������ ��� �� ����';
COMMENT ON COLUMN managerlv.managerlv_do is '������ ��޾���';
 */

public class ManagerlvVO {
/** ������ ��޹�ȣ*/
private int managerlvno;
/** ������ ����̸�*/
private String managerlv_name;
/** ������ ��� �� ����*/
private int managerlv_pay;
/** ������ ��޾���*/
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
