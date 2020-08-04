/**********************************/
/* Table Name: ������ ��� */
/**********************************/
DROP TABLE MANAGERLV;
CREATE TABLE MANAGERLV(
		MANAGERLVNO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MANAGERLV_NAME                		VARCHAR2(20)		 NOT NULL,
		MANAGERLV_PAY                 		NUMBER(20)		 NOT NULL,
		MANAGERLV_DO                  		CLOB		 NULL 
);

COMMENT ON TABLE MANAGERLV is '������ ���';
COMMENT ON COLUMN MANAGERLV.MANAGERLVNO is '������ ��޹�ȣ';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_NAME is '������ ����̸�';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_PAY is '������ ��� �� ����';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_DO is '������ ��޾���';

DROP SEQUENCE MANAGERLV_seq;
CREATE SEQUENCE MANAGERLV_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;