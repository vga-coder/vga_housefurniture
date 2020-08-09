package vga.mvc.notecate;

/*CREATE TABLE NOTECATE(
		NOTECATENO                    		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NOTECATE_NAME                 		VARCHAR2(50)		 NOT NULL,
		NOTECATE_CONTENT              		CLOB		 NOT NULL,
		NOTECATECNT                   		NUMBER(10)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE NOTECATE is '공지사항 카테고리';
COMMENT ON COLUMN NOTECATE.NOTECATENO is '공지사항 카테고리 번호';
COMMENT ON COLUMN NOTECATE.NOTECATE_NAME is '이름';
COMMENT ON COLUMN NOTECATE.NOTECATE_CONTENT is '내용';
COMMENT ON COLUMN NOTECATE.NOTECATECNT is '등록된 공지사항 수';
*/
public class NotecateVO {
/*공지사항 카테고리 번호*/
private int notecateno;
/*이름*/
private String notecate_name;
/*내용*/
private String notecate_content;
/*등록된 공지사항 수*/
private int notecnt;

public int getNotecateno() {
	return notecateno;
}
public void setNotecateno(int notecateno) {
	this.notecateno = notecateno;
}
public String getNotecate_name() {
	return notecate_name;
}
public void setNotecate_name(String notecate_name) {
	this.notecate_name = notecate_name;
}
public String getNotecate_content() {
	return notecate_content;
}
public void setNotecate_content(String notecate_content) {
	this.notecate_content = notecate_content;
}
public int getNotecnt() {
	return notecnt;
}
public void setNotecnt(int notecnt) {
	this.notecnt = notecnt;
}

}
