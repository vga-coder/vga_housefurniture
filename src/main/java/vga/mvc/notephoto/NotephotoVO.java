package vga.mvc.notephoto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/*CREATE TABLE NOTEPHOTO(
		NOTEPHOTONO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		FNAME                         		VARCHAR2(100)		 NULL ,
		FUPNAME                       		VARCHAR2(100)		 NULL ,
		THUMB                         		VARCHAR2(100)		 NULL ,
		FSIZE                         		NUMBER(10)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		NOTENO                        		NUMBER(10)	 NOT NULL ,
  FOREIGN KEY (NOTENO) REFERENCES NOTE (NOTENO)
);

COMMENT ON TABLE NOTEPHOTO is '공지사항 첨부파일';
COMMENT ON COLUMN NOTEPHOTO.NOTEPHOTONO is '상품사진 번호';
COMMENT ON COLUMN NOTEPHOTO.FNAME is '원본 파일명';
COMMENT ON COLUMN NOTEPHOTO.FUPNAME is '업로드 파일명';
COMMENT ON COLUMN NOTEPHOTO.THUMB is 'Thumb 파일명';
COMMENT ON COLUMN NOTEPHOTO.FSIZE is '파일 사이즈';
COMMENT ON COLUMN NOTEPHOTO.RDATE is '등록일';
COMMENT ON COLUMN NOTEPHOTO.NOTENO is '공지사항번호';
*/
public class NotephotoVO {
/*상품사진 번호*/
private int notephotono;
/*공지사항번호*/
private int noteno;
/*원본 파일명*/
private String fname;
/*업로드 파일명*/
private String fupname;
/*Thumb 파일*/
private String thumb;
/*파일 사이즈*/
private String fisze;
/*등록일*/
private String rdate;
/** Form의 파일을 MultipartFile로 변환하여 List에 저장  */
private List<MultipartFile> fnamesMF;

// private MultipartFile fnamesMF;  // 하나의 파일 처리
/** 파일 단위 출력 */
private String flabel;

public int getNotephotono() {
	return notephotono;
}

public void setNotephotono(int notephotono) {
	this.notephotono = notephotono;
}

public int getNoteno() {
	return noteno;
}

public void setNoteno(int noteno) {
	this.noteno = noteno;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getFupname() {
	return fupname;
}

public void setFupname(String fupname) {
	this.fupname = fupname;
}

public String getThumb() {
	return thumb;
}

public void setThumb(String thumb) {
	this.thumb = thumb;
}

public String getFisze() {
	return fisze;
}

public void setFisze(String fisze) {
	this.fisze = fisze;
}

public String getRdate() {
	return rdate;
}

public void setRdate(String rdate) {
	this.rdate = rdate;
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
