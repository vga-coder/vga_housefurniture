/**********************************/
/* Table Name: 공지사항 카테고리 */
/**********************************/
DROP TABLE NOTECATE;
CREATE TABLE NOTECATE(
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

DROP SEQUENCE NOTECATE_seq;
CREATE SEQUENCE NOTECATE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;