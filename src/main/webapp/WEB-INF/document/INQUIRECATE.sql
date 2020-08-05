/**********************************/
/* Table Name: ���� ī�װ� */
/**********************************/
DROP TABLE INQUIRECATE;
CREATE TABLE INQUIRECATE(
		INQUIRECATENO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRECATE_NAME              		VARCHAR2(50)		 NOT NULL,
		INQUIRECATE_CONTENT           		CLOB		 NOT NULL,
		INQUIRECNT                    		NUMBER(10)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '���� ī�װ�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATENO is '���� ī�װ� ��ȣ';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE_NAME is '�̸�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE_CONTENT is '����';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '��ϵ� ���� ��';

DROP SEQUENCE INQUIRECATE_seq;
CREATE SEQUENCE INQUIRECATE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;