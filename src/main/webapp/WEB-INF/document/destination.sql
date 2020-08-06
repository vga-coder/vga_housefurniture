/**********************************/
/* Table Name: 배송지 */
/**********************************/
DROP TABLE DESTINATION;
CREATE TABLE DESTINATION(
		DESTINATIONNO                 		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		RECIPIENT                     		VARCHAR2(20)		 NOT NULL,
		RECIPIENT_PHONE               		NUMBER(20)		 NOT NULL,
		POSTCODE                      		NUMBER(10)		 NOT NULL,
		ADDRESS1                      		VARCHAR2(80)		 NOT NULL,
		ADDRESS2                      		VARCHAR2(80)		 NOT NULL,
		BASIC                         		CHAR(1)		 NOT NULL ,
		MEMNO                         		NUMBER(10)		 NOT NULL,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO)
);

COMMENT ON TABLE DESTINATION is '배송지';
COMMENT ON COLUMN DESTINATION.DESTINATIONNO is '배송지번호';
COMMENT ON COLUMN DESTINATION.RECIPIENT is '배송받는사람';
COMMENT ON COLUMN DESTINATION.RECIPIENT_PHONE is '배송받는사람 번호';
COMMENT ON COLUMN DESTINATION.POSTCODE is '우편번호';
COMMENT ON COLUMN DESTINATION.ADDRESS1 is '주소1';
COMMENT ON COLUMN DESTINATION.ADDRESS2 is '주소';
COMMENT ON COLUMN DESTINATION.BASIC is '기본배송지';
COMMENT ON COLUMN DESTINATION.MEMNO is '회원번호';

DROP SEQUENCE DESTINATION_seq;
CREATE SEQUENCE DESTINATION_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;