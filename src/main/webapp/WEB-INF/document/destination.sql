/**********************************/
/* Table Name: ����� */
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

COMMENT ON TABLE DESTINATION is '�����';
COMMENT ON COLUMN DESTINATION.DESTINATIONNO is '�������ȣ';
COMMENT ON COLUMN DESTINATION.RECIPIENT is '��۹޴»��';
COMMENT ON COLUMN DESTINATION.RECIPIENT_PHONE is '��۹޴»�� ��ȣ';
COMMENT ON COLUMN DESTINATION.POSTCODE is '�����ȣ';
COMMENT ON COLUMN DESTINATION.ADDRESS1 is '�ּ�1';
COMMENT ON COLUMN DESTINATION.ADDRESS2 is '�ּ�';
COMMENT ON COLUMN DESTINATION.BASIC is '�⺻�����';
COMMENT ON COLUMN DESTINATION.MEMNO is 'ȸ����ȣ';

DROP SEQUENCE DESTINATION_seq;
CREATE SEQUENCE DESTINATION_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;