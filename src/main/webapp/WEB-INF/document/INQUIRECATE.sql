/**********************************/
/* Table Name: 문의 카테고리 */
/**********************************/
CREATE TABLE INQUIRECATE(
		INQUIRECATE                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_NAME                  		VARCHAR2(50)		 NOT NULL,
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '문의 카테고리';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE is '문의 카테고리 번호';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '이름';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '등록된 문의 수';
