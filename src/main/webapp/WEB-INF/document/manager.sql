/**********************************/
/* Table Name: ������ */
/**********************************/
DROP TABLE MANAGER;
CREATE TABLE MANAGER(
		MANAGERNO                     		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MANAGER_IMG                   		VARCHAR2(1000)		 NULL ,
		MANAGER_ID                    		VARCHAR2(50)		 NOT NULL,
		MANAGER_PW                    		VARCHAR2(20)		 NOT NULL,
		MANAGER_NAME                  		VARCHAR2(20)		 NOT NULL,
		MANAGER_YY                    		NUMBER(20)		 NOT NULL,
		MANAGER_MM                    		NUMBER(20)		 NOT NULL,
		MANAGER_DD                    		NUMBER(20)		 NOT NULL,
		MANAGER_TELECOM               		VARCHAR2(20)		 NOT NULL,
		MANAGER_PHONE                 		NUMBER(20)		 NOT NULL,
		MANAGER_EMAIL                 		VARCHAR2(50)		 NOT NULL,
		MANAGER_POSTCODE              		VARCHAR2(20)		 NOT NULL,
		MANAGER_ADDRESS1              		VARCHAR2(80)		 NOT NULL,
		MANAGER_ADDRESS2              		VARCHAR2(80)		 NOT NULL,
		JOINDATE                      		DATE		 NOT NULL,
		MANAGERLVNO                   		NUMBER(10)		 NOT NULL,
  FOREIGN KEY (MANAGERLVNO) REFERENCES MANAGERLV (MANAGERLVNO)
);

COMMENT ON TABLE MANAGER is '������';
COMMENT ON COLUMN MANAGER.MANAGERNO is '������ ��ȣ';
COMMENT ON COLUMN MANAGER.MANAGER_IMG is '������ ����';
COMMENT ON COLUMN MANAGER.MANAGER_ID is '������ ���̵�';
COMMENT ON COLUMN MANAGER.MANAGER_PW is '������ ��й�ȣ';
COMMENT ON COLUMN MANAGER.MANAGER_NAME is '������ �̸�';
COMMENT ON COLUMN MANAGER.MANAGER_YY is '������ ��';
COMMENT ON COLUMN MANAGER.MANAGER_MM is '������ ��';
COMMENT ON COLUMN MANAGER.MANAGER_DD is '������ ��';
COMMENT ON COLUMN MANAGER.MANAGER_TELECOM is '������ ��Ż�';
COMMENT ON COLUMN MANAGER.MANAGER_PHONE is '������ ��ȭ��ȣ';
COMMENT ON COLUMN MANAGER.MANAGER_EMAIL is '������ �̸���';
COMMENT ON COLUMN MANAGER.MANAGER_POSTCODE is '������ �����ȣ';
COMMENT ON COLUMN MANAGER.MANAGER_ADDRESS1 is '������ �ּ�1';
COMMENT ON COLUMN MANAGER.MANAGER_ADDRESS2 is '������ �ּ�2';
COMMENT ON COLUMN MANAGER.JOINDATE is '�Ի���';
COMMENT ON COLUMN MANAGER.MANAGERLVNO is '������ ��޹�ȣ';

DROP SEQUENCE MANAGER_seq;
CREATE SEQUENCE MANAGER_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;