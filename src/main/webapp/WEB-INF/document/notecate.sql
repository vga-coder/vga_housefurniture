/**********************************/
/* Table Name: �������� ī�װ� */
/**********************************/
DROP TABLE NOTECATE;
CREATE TABLE NOTECATE(
		NOTECATENO                    		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NOTECATE_NAME                 		VARCHAR2(50)		 NOT NULL,
		NOTECATE_CONTENT              		CLOB		 NOT NULL,
		NOTECATECNT                   		NUMBER(10)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE NOTECATE is '�������� ī�װ�';
COMMENT ON COLUMN NOTECATE.NOTECATENO is '�������� ī�װ� ��ȣ';
COMMENT ON COLUMN NOTECATE.NOTECATE_NAME is '�̸�';
COMMENT ON COLUMN NOTECATE.NOTECATE_CONTENT is '����';
COMMENT ON COLUMN NOTECATE.NOTECATECNT is '��ϵ� �������� ��';

DROP SEQUENCE NOTECATE_seq;
CREATE SEQUENCE NOTECATE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;