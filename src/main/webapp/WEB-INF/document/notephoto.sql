/**********************************/
/* Table Name: 공지사항 첨부파일 */
/**********************************/
DROP TABLE NOTEPHOTO;
CREATE TABLE NOTEPHOTO(
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

DROP SEQUENCE NOTEPHOTO_seq;
CREATE SEQUENCE NOTEPHOTO_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;