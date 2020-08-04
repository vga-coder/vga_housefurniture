package vga.mvc.manager;

/*CREATE TABLE manager(
	      managerno                           NUMBER(10)       NOT NULL       PRIMARY KEY,
	      manager_img                         VARCHAR2(1000)       NULL ,
	      manager_id                          VARCHAR2(20)       NOT NULL,
	      manager_pw                          VARCHAR2(20)       NOT NULL,
	      manager_name                        VARCHAR2(20)       NOT NULL,
	      manager_yy                       NUMBER(20)       NOT NULL,
	      manager_mm                       NUMBER(20)       NOT NULL,
	      manager_dd                       NUMBER(20)       NOT NULL,
	      manager_telecom                     VARCHAR2(20)       NOT NULL,
	      manager_phone                       NUMBER(20)       NOT NULL,
	      manager_email                       VARCHAR2(10)       NOT NULL,
	      manager_postcode                    VARCHAR2(20)       NOT NULL,
	      manager_address1                    VARCHAR2(80)       NOT NULL,
	      manager_address2                    VARCHAR2(80)       NOT NULL,
	      joindate                            DATE       NOT NULL,
	      managerlvno                     NUMBER(10)       NOT NULL,
	  FOREIGN KEY (managerlvno) REFERENCES managerlv (managerlvno)
	);*/
public class ManagerVO {
/*관리자 번호*/
private int managerno;
/*관리자 사진*/
private String manager_img;
/*관리자 아이디*/
private String manager_id;
/*관리자 비밀번호*/
private String manager_pw;
/*관리자 이름*/
private String manager_name;
/*관리자 년*/
private int manager_yy;
/*관리자 월*/
private int manager_mm;
/*관리자 일*/
private int manager_dd;
/*관리자 통신사*/
private String manager_telecom;
/*관리자 전화번호*/
private int manager_phone;
/*관리자 이메일*/
private String manager_email;
/*관리자 우편번호*/
private String manager_postcode;
/*관리자 주소1*/
private String manager_address1;
/*관리자 주소2*/
private String manager_address2;
/*입사일*/
private String joindate;
/*관리자 등급번호*/
private int managerlvno;

public int getManagerno() {
	return managerno;
}
public void setManagerno(int managerno) {
	this.managerno = managerno;
}
public String getManager_img() {
	return manager_img;
}
public void setManager_img(String manager_img) {
	this.manager_img = manager_img;
}
public String getManager_id() {
	return manager_id;
}
public void setManager_id(String manager_id) {
	this.manager_id = manager_id;
}
public String getManager_pw() {
	return manager_pw;
}
public void setManager_pw(String manager_pw) {
	this.manager_pw = manager_pw;
}
public String getManager_name() {
	return manager_name;
}
public void setManager_name(String manager_name) {
	this.manager_name = manager_name;
}
public int getManager_yy() {
	return manager_yy;
}
public void setManager_yy(int manager_yy) {
	this.manager_yy = manager_yy;
}
public int getManager_mm() {
	return manager_mm;
}
public void setManager_mm(int manager_mm) {
	this.manager_mm = manager_mm;
}
public int getManager_dd() {
	return manager_dd;
}
public void setManager_dd(int manager_dd) {
	this.manager_dd = manager_dd;
}
public String getManager_telecom() {
	return manager_telecom;
}
public void setManager_telecom(String manager_telecom) {
	this.manager_telecom = manager_telecom;
}
public int getManager_phone() {
	return manager_phone;
}
public void setManager_phone(int manager_phone) {
	this.manager_phone = manager_phone;
}
public String getManager_email() {
	return manager_email;
}
public void setManager_email(String manager_email) {
	this.manager_email = manager_email;
}
public String getManager_postcode() {
	return manager_postcode;
}
public void setManager_postcode(String manager_postcode) {
	this.manager_postcode = manager_postcode;
}
public String getManager_address1() {
	return manager_address1;
}
public void setManager_address1(String manager_address1) {
	this.manager_address1 = manager_address1;
}
public String getManager_address2() {
	return manager_address2;
}
public void setManager_address2(String manager_address2) {
	this.manager_address2 = manager_address2;
}
public String getJoindate() {
	return joindate;
}
public void setJoindate(String joindate) {
	this.joindate = joindate;
}
public int getManagerlvno() {
	return managerlvno;
}
public void setManagerlvno(int managerlvno) {
	this.managerlvno = managerlvno;
}



}
