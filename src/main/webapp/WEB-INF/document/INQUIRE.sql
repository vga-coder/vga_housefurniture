/**********************************/
/* Table Name: 1��1���� */
/**********************************/
DROP TABLE INQUIRE;
CREATE TABLE INQUIRE(
		INQUIRENO                     		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_TITLE                 		VARCHAR2(100)		 NOT NULL,
		INQUIRE_CONTENT               		VARCHAR2(300)		 NOT NULL,
		INQUIRE_RDATE                 		DATE		 NOT NULL,
		MEMNO                         		NUMBER(10)		NOT NULL ,
		INQUIRECATENO                   		NUMBER(10)	NOT NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO),
  FOREIGN KEY (INQUIRECATENO) REFERENCES INQUIRECATE (INQUIRECATENO)
);

COMMENT ON TABLE INQUIRE is '1��1����';
COMMENT ON COLUMN INQUIRE.INQUIRENO is '���� ��ȣ';
COMMENT ON COLUMN INQUIRE.INQUIRE_TITLE is '���� ����';
COMMENT ON COLUMN INQUIRE.INQUIRE_CONTENT is '���� ����';
COMMENT ON COLUMN INQUIRE.INQUIRE_RDATE is '�����';
COMMENT ON COLUMN INQUIRE.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN INQUIRE.INQUIRECATENO is '���� ī�װ� ��ȣ';

DROP SEQUENCE INQUIRE_seq;
CREATE SEQUENCE INQUIRE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;
  
SELECT * FROM INQUIRE;