/**********************************/
/* Table Name: 관리자 등급 */
/**********************************/
DROP TABLE MANAGERLV;
CREATE TABLE MANAGERLV(
		MANAGERLVNO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MANAGERLV_NAME                		VARCHAR2(20)		 NOT NULL,
		MANAGERLV_PAY                 		NUMBER(20)		 NOT NULL,
		MANAGERLV_DO                  		CLOB		 NULL 
);

COMMENT ON TABLE MANAGERLV is '관리자 등급';
COMMENT ON COLUMN MANAGERLV.MANAGERLVNO is '관리자 등급번호';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_NAME is '관리자 등급이름';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_PAY is '관리자 등급 별 연봉';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_DO is '관리자 등급업무';

DROP SEQUENCE MANAGERLV_seq;
CREATE SEQUENCE MANAGERLV_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;