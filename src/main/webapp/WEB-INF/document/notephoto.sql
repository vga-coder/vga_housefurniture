/**********************************/
/* Table Name: �������� ÷������ */
/**********************************/
DROP TABLE NOTEPHOTO;
CREATE TABLE NOTEPHOTO(
		NOTEPHOTONO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		FNAME                         		VARCHAR2(100)		 NULL ,
		FUPNAME                       		VARCHAR2(100)		 NULL ,
		THUMB                         		VARCHAR2(100)		 NULL ,
		FSIZE                         		NUMBER(10)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		NOTENO                        		NUMBER(10)	 NOT NULL ,
  FOREIGN KEY (NOTENO) REFERENCES NOTE (NOTENO)
);

COMMENT ON TABLE NOTEPHOTO is '�������� ÷������';
COMMENT ON COLUMN NOTEPHOTO.NOTEPHOTONO is '��ǰ���� ��ȣ';
COMMENT ON COLUMN NOTEPHOTO.FNAME is '���� ���ϸ�';
COMMENT ON COLUMN NOTEPHOTO.FUPNAME is '���ε� ���ϸ�';
COMMENT ON COLUMN NOTEPHOTO.THUMB is 'Thumb ���ϸ�';
COMMENT ON COLUMN NOTEPHOTO.FSIZE is '���� ������';
COMMENT ON COLUMN NOTEPHOTO.RDATE is '�����';
COMMENT ON COLUMN NOTEPHOTO.NOTENO is '�������׹�ȣ';

DROP SEQUENCE NOTEPHOTO_seq;
CREATE SEQUENCE NOTEPHOTO_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;