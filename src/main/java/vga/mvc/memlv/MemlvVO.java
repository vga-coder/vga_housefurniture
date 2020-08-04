package vga.mvc.memlv;

import org.springframework.web.multipart.MultipartFile;

/*CREATE TABLE memlv(
      memlvno                         NUMBER(10)       NOT NULL       PRIMARY KEY,
      memlv_name                       VARCHAR2(20)       NOT NULL,
      memlv_img                             VARCHAR2(1000)       NULL ,
      memlv_condition                   CLOB NOT NULL,
      memlv_benefit                     CLOB NOT NULL
);

COMMENT ON TABLE memlv is '회원 등급';
COMMENT ON COLUMN memlv.memlvno is '회원 등급번호';
COMMENT ON COLUMN memlv.memlv_name is '회원 등급이름';
COMMENT ON COLUMN memlv.memlv_img is '회원 등급로고';
COMMENT ON COLUMN memlv.memlv_condition is '회원 등급조건';
COMMENT ON COLUMN memlv.memlv_benefit is '회원 등급혜택';
*/
public class MemlvVO {
/** 회원 등급번호*/
private int memlvno;
/** 회원 등급이름*/
private String memlv_name;
/** 회원 등급로고*/
private String memlv_img;
/** 회원 등급조건*/
private String memlv_condition;
/** 회원 등급혜택*/
private String memlv_benefit;

/** 이미지 MultipartFile */
private MultipartFile memlv_imgMF;

public MultipartFile getMemlv_imgMF() {
	return memlv_imgMF;
}
public void setMemlv_imgMF(MultipartFile memlv_imgMF) {
	this.memlv_imgMF = memlv_imgMF;
}
public int getMemlvno() {
	return memlvno;
}
public void setMemlvno(int memlvno) {
	this.memlvno = memlvno;
}
public String getMemlv_name() {
	return memlv_name;
}
public void setMemlv_name(String memlv_name) {
	this.memlv_name = memlv_name;
}
public String getMemlv_img() {
	return memlv_img;
}
public void setMemlv_img(String memlv_img) {
	this.memlv_img = memlv_img;
}
public String getMemlv_condition() {
	return memlv_condition;
}
public void setMemlv_condition(String memlv_condition) {
	this.memlv_condition = memlv_condition;
}
public String getMemlv_benefit() {
	return memlv_benefit;
}
public void setMemlv_benefit(String memlv_benefit) {
	this.memlv_benefit = memlv_benefit;
}



}
