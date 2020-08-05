/**********************************/
/* Table Name: �������� */
/**********************************/
DROP TABLE NOTE;
CREATE TABLE NOTE(
		NOTENO                        		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NOTE_TITLE                    		VARCHAR2(50)		 NOT NULL,
		NOTE_CONTENT                  		CLOB(4000)		 NOT NULL,
		NOTE_SEQNO                    		NUMBER(10)		 NOT NULL,
		NOTE_MANAGER                  		VARCHAR2(50)		 NOT NULL,
		NOTE_DATE                     		DATE		 NOT NULL,
		MANAGERNO                     		NUMBER(10)		 NOT NULL,
		NOTECATENO                    		NUMBER(10)		NOT NULL ,
  FOREIGN KEY (MANAGERNO) REFERENCES MANAGER (MANAGERNO),
  FOREIGN KEY (NOTECATENO) REFERENCES NOTECATE (NOTECATENO)
);

COMMENT ON TABLE NOTE is '��������';
COMMENT ON COLUMN NOTE.NOTENO is '�������׹�ȣ';
COMMENT ON COLUMN NOTE.NOTE_TITLE is '�������� ����';
COMMENT ON COLUMN NOTE.NOTE_CONTENT is '�������� ����';
COMMENT ON COLUMN NOTE.NOTE_SEQNO is '�������� ��¼���';
COMMENT ON COLUMN NOTE.NOTE_MANAGER is '�������� �ۼ���';
COMMENT ON COLUMN NOTE.NOTE_DATE is '�����';
COMMENT ON COLUMN NOTE.MANAGERNO is '������ ��ȣ';
COMMENT ON COLUMN NOTE.NOTECATENO is '�������� ī�װ� ��ȣ';

DROP SEQUENCE NOTE_seq;
CREATE SEQUENCE NOTE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;