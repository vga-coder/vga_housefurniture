package vag.mvc.inquire_attachfile;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/*CREATE TABLE INQUIRE_ATTACHFILE(
		INQUIRE_ATTACHFILENO          		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRENO                     		NUMBER(10)		NOT NULL,
		INQUIRE_FNAME                 		VARCHAR2(100)		 NOT NULL,
		INQUIRE_FUPNAME               		VARCHAR2(100)		 NOT NULL,
		INQUIRE_THUMB                 		VARCHAR2(100)		 NULL ,
		INQUIRE_FSIZE                 		NUMBER(10)		 NOT NULL,
		INQUIRE_RDATE                 		DATE		 NOT NULL,
  FOREIGN KEY (INQUIRENO) REFERENCES INQUIRE (INQUIRENO)
);

COMMENT ON TABLE INQUIRE_ATTACHFILE is '1대1문의 첨부파일';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_ATTACHFILENO is '첨부파일 번호';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRENO is '문의 번호';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FNAME is '원본 파일명';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FUPNAME is '업로드 파일명';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_THUMB is 'Thumb 파일';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FSIZE is '파일 사이즈';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_RDATE is '등록일';
*/
public class Inquire_attachfileVO {
/*첨부파일 번호*/
private int inquire_attachfileno;
/*문의 번호*/
private int inquireno;
/*원본 파일명*/
private String inquire_fname;
/*업로드 파일명*/
private String inquire_fupname;
/*Thumb 파일*/
private String inquire_thumb;
/*파일 사이즈*/
private String inquire_fisze;
/*등록일*/
private String inquire_rdate;

/** Form의 파일을 MultipartFile로 변환하여 List에 저장  */
private List<MultipartFile> fnamesMF;

// private MultipartFile fnamesMF;  // 하나의 파일 처리
/** 파일 단위 출력 */
private String flabel;

public int getInquire_attachfileno() {
	return inquire_attachfileno;
}

public void setInquire_attachfileno(int inquire_attachfileno) {
	this.inquire_attachfileno = inquire_attachfileno;
}

public int getInquireno() {
	return inquireno;
}

public void setInquireno(int inquireno) {
	this.inquireno = inquireno;
}

public String getInquire_fname() {
	return inquire_fname;
}

public void setInquire_fname(String inquire_fname) {
	this.inquire_fname = inquire_fname;
}

public String getInquire_fupname() {
	return inquire_fupname;
}

public void setInquire_fupname(String inquire_fupname) {
	this.inquire_fupname = inquire_fupname;
}

public String getInquire_thumb() {
	return inquire_thumb;
}

public void setInquire_thumb(String inquire_thumb) {
	this.inquire_thumb = inquire_thumb;
}

public String getInquire_fisze() {
	return inquire_fisze;
}

public void setInquire_fisze(String inquire_fisze) {
	this.inquire_fisze = inquire_fisze;
}

public String getInquire_rdate() {
	return inquire_rdate;
}

public void setInquire_rdate(String inquire_rdate) {
	this.inquire_rdate = inquire_rdate;
}

public List<MultipartFile> getFnamesMF() {
	return fnamesMF;
}

public void setFnamesMF(List<MultipartFile> fnamesMF) {
	this.fnamesMF = fnamesMF;
}

public String getFlabel() {
	return flabel;
}

public void setFlabel(String flabel) {
	this.flabel = flabel;
}

}
