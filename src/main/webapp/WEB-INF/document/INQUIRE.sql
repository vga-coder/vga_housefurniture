/**********************************/
/* Table Name: 1대1문의 */
/**********************************/
DROP TABLE INQUIRE;
CREATE TABLE INQUIRE(
		INQUIRENO                     		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_TITLE                 		VARCHAR2(100)		 NOT NULL,
		INQUIRE_CONTENT               		VARCHAR2(300)		 NOT NULL,
		INQUIRE_RDATE                 		DATE		 NOT NULL,
		MEMNO                         		NUMBER(10)		NOT NULL ,
		INQUIRECATENO                   		NUMBER(10)	NOT NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO),
  FOREIGN KEY (INQUIRECATENO) REFERENCES INQUIRECATE (INQUIRECATENO)
);

COMMENT ON TABLE INQUIRE is '1대1문의';
COMMENT ON COLUMN INQUIRE.INQUIRENO is '문의 번호';
COMMENT ON COLUMN INQUIRE.INQUIRE_TITLE is '문의 제목';
COMMENT ON COLUMN INQUIRE.INQUIRE_CONTENT is '문의 내용';
COMMENT ON COLUMN INQUIRE.INQUIRE_RDATE is '등록일';
COMMENT ON COLUMN INQUIRE.MEMNO is '회원번호';
COMMENT ON COLUMN INQUIRE.INQUIRECATENO is '문의 카테고리 번호';

DROP SEQUENCE INQUIRE_seq;
CREATE SEQUENCE INQUIRE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;
  
SELECT * FROM INQUIRE;