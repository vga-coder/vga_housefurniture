package vga.mvc.inquirecate;

/*CREATE TABLE INQUIRECATE(
		INQUIRECATENO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRECATE_NAME                  		VARCHAR2(50)		 NOT NULL,
		INQUIRECATE_CONTENT
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '문의 카테고리';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATENO is '문의 카테고리 번호';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '이름';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE_CONTENT is '내용';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '등록된 문의 수';
*/
public class InquirecateVO {
/*문의 카테고리 번호*/
private int inquirecateno;
/*이름*/
private String inquirecate_name;
/*내용*/
private String inquirecate_content;
/*등록된 문의 수*/
private int inquirecnt;

public int getInquirecateno() {
	return inquirecateno;
}
public void setInquirecateno(int inquirecateno) {
	this.inquirecateno = inquirecateno;
}
public String getInquirecate_name() {
	return inquirecate_name;
}
public void setInquirecate_name(String inquirecate_name) {
	this.inquirecate_name = inquirecate_name;
}
public String getInquirecate_content() {
	return inquirecate_content;
}
public void setInquirecate_content(String inquirecate_content) {
	this.inquirecate_content = inquirecate_content;
}
public int getInquirecnt() {
	return inquirecnt;
}
public void setInquirecnt(int inquirecnt) {
	this.inquirecnt = inquirecnt;
}




}
