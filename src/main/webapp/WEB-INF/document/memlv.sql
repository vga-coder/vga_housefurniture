/**********************************/
/* Table Name: ȸ�� ��� */
/**********************************/
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