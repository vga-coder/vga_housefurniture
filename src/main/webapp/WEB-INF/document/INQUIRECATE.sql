/**********************************/
/* Table Name: ���� ī�װ� */
/**********************************/
CREATE TABLE INQUIRECATE(
		INQUIRECATE                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_NAME                  		VARCHAR2(50)		 NOT NULL,
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '���� ī�װ�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE is '���� ī�װ� ��ȣ';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '�̸�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '��ϵ� ���� ��';
