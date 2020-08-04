/**********************************/
/* Table Name: 회원 등급 */
/**********************************/
DROP TABLE MEMLV;
CREATE TABLE MEMLV(
		MEMLVNO                       		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMLV_NAME                    		VARCHAR2(20)		 NOT NULL,
		MEMLV_IMG                     		VARCHAR2(1000)		 NULL ,
		MEMLV_CONDITION               		CLOB		 NOT NULL,
		MEMLV_BENEFIT                 		CLOB		 NOT NULL
);

COMMENT ON TABLE MEMLV is '회원 등급';
COMMENT ON COLUMN MEMLV.MEMLVNO is '회원 등급번호';
COMMENT ON COLUMN MEMLV.MEMLV_NAME is '회원 등급이름';
COMMENT ON COLUMN MEMLV.MEMLV_IMG is '회원 등급로고';
COMMENT ON COLUMN MEMLV.MEMLV_CONDITION is '회원 등급조건';
COMMENT ON COLUMN MEMLV.MEMLV_BENEFIT is '회원 등급혜택';

DROP SEQUENCE MEMLV_seq;
CREATE SEQUENCE MEMLV_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;

