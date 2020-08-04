/**********************************/
/* Table Name: ȸ�� */
/**********************************/
DROP TABLE MEM;
CREATE TABLE MEM(
		MEMNO                         		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEM_IMG                       		VARCHAR2(1000)		 NULL ,
		MEM_ID                        		VARCHAR2(20)		 NOT NULL,
		MEM_PW                        		VARCHAR2(20)		 NOT NULL,
		MEM_NAME                      		VARCHAR2(20)		 NOT NULL,
		MEM_YY                        		NUMBER(10)		 NOT NULL,
		MEM_MM                        		NUMBER(10)		 NOT NULL,
		MEM_DD                        		NUMBER(10)		 NOT NULL,
		MEM_TELECOM                   		VARCHAR2(20)		 NOT NULL,
		MEM_PHONE                     		NUMBER(20)		 NOT NULL,
		MEM_EMAIL                     		VARCHAR2(20)		 NOT NULL,
		SIGNDATE                      		DATE		 NOT NULL,
		MEMLVNO                       		NUMBER(10)		 NOT NULL,
  FOREIGN KEY (MEMLVNO) REFERENCES MEMLV (MEMLVNO)
);

COMMENT ON TABLE MEM is 'ȸ��';
COMMENT ON COLUMN MEM.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN MEM.MEM_IMG is 'ȸ�� ����';
COMMENT ON COLUMN MEM.MEM_ID is 'ȸ�� ���̵�';
COMMENT ON COLUMN MEM.MEM_PW is 'ȸ�� ��й�ȣ';
COMMENT ON COLUMN MEM.MEM_NAME is 'ȸ�� �̸�';
COMMENT ON COLUMN MEM.MEM_YY is 'ȸ�� ��';
COMMENT ON COLUMN MEM.MEM_MM is 'ȸ�� ��';
COMMENT ON COLUMN MEM.MEM_DD is 'ȸ�� ��';
COMMENT ON COLUMN MEM.MEM_TELECOM is 'ȸ�� ��Ż�';
COMMENT ON COLUMN MEM.MEM_PHONE is 'ȸ�� ��ȭ��ȣ';
COMMENT ON COLUMN MEM.MEM_EMAIL is 'ȸ�� �̸���';
COMMENT ON COLUMN MEM.SIGNDATE is '������';
COMMENT ON COLUMN MEM.MEMLVNO is 'ȸ�� ��޹�ȣ';

DROP SEQUENCE mem_seq;
CREATE SEQUENCE mem_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;