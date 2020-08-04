/**********************************/
/* Table Name: 문의 카테고리 */
/**********************************/
DROP TABLE INQUIRECATE;
CREATE TABLE INQUIRECATE(
		INQUIRECATE                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_NAME                  		VARCHAR2(50)		 NOT NULL,
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '문의 카테고리';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE is '문의 카테고리 번호';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '이름';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '등록된 문의 수';


DROP SEQUENCE INQUIRECATE_seq;
CREATE SEQUENCE INQUIRECATE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;
