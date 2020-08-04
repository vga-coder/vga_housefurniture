/**********************************/
/* Table Name: ȸ�� ��� */
/**********************************/
DROP TABLE MEMLV;
CREATE TABLE MEMLV(
		MEMLVNO                       		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMLV_NAME                    		VARCHAR2(20)		 NOT NULL,
		MEMLV_IMG                     		VARCHAR2(1000)		 NULL ,
		MEMLV_CONDITION               		CLOB		 NOT NULL,
		MEMLV_BENEFIT                 		CLOB		 NOT NULL
);

COMMENT ON TABLE MEMLV is 'ȸ�� ���';
COMMENT ON COLUMN MEMLV.MEMLVNO is 'ȸ�� ��޹�ȣ';
COMMENT ON COLUMN MEMLV.MEMLV_NAME is 'ȸ�� ����̸�';
COMMENT ON COLUMN MEMLV.MEMLV_IMG is 'ȸ�� ��޷ΰ�';
COMMENT ON COLUMN MEMLV.MEMLV_CONDITION is 'ȸ�� �������';
COMMENT ON COLUMN MEMLV.MEMLV_BENEFIT is 'ȸ�� �������';

DROP SEQUENCE MEMLV_seq;
CREATE SEQUENCE MEMLV_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;

