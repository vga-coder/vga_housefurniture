/**********************************/
/* Table Name: ������ ��� */
/**********************************/
DROP TABLE MANAGERLV;
CREATE TABLE MANAGERLV(
		MANAGERLVNO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MANAGERLV_NAME                		VARCHAR2(20)		 NOT NULL,
		MANAGERLV_PAY                 		NUMBER(20)		 NOT NULL,
		MANAGERLV_DO                  		CLOB		 NULL 
);

COMMENT ON TABLE MANAGERLV is '������ ���';
COMMENT ON COLUMN MANAGERLV.MANAGERLVNO is '������ ��޹�ȣ';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_NAME is '������ ����̸�';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_PAY is '������ ��� �� ����';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_DO is '������ ��޾���';

DROP SEQUENCE MANAGERLV_seq;
CREATE SEQUENCE MANAGERLV_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;


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


/**********************************/
/* Table Name: ȸ�� ��� */
/**********************************/
DROP TABLE MEMLV;
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

DROP SEQUENCE MEMLV_seq;
CREATE SEQUENCE MEMLV_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;


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
		BASIC                         		CHAR(1)		 NOT NULL,
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


/**********************************/
/* Table Name: ���� ī�װ� */
/**********************************/
DROP TABLE INQUIRECATE;
CREATE TABLE INQUIRECATE(
		INQUIRECATE                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_NAME                  		VARCHAR2(50)		 NOT NULL,
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '���� ī�װ�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE is '���� ī�װ� ��ȣ';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '�̸�';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '��ϵ� ���� ��';

DROP SEQUENCE INQUIRECATE_seq;
CREATE SEQUENCE INQUIRECATE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;


/**********************************/
/* Table Name: 1��1���� */
/**********************************/
DROP TABLE INQUIRE;
CREATE TABLE INQUIRE(
		INQUIRENO                     		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEM_NO                        		NUMBER(10)		 NOT NULL,
		INQUIRE_TITLE                 		VARCHAR2(100)		 NOT NULL,
		INQUIRE_CONTENT               		VARCHAR2(300)		 NOT NULL,
		INQUIRE_RNAME                 		VARCHAR2(10)		 NOT NULL,
		INQUIRE_PASSWD                		VARCHAR2(15)		 NOT NULL,
		WORD                          		VARCHAR2(300)		 NULL ,
		INQUIRE_RDATE                 		DATE		 NOT NULL,
		MEMNO                         		NUMBER(10)		 NULL ,
		INQUIRECATE                   		NUMBER(10)		 NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO),
  FOREIGN KEY (INQUIRECATE) REFERENCES INQUIRECATE (INQUIRECATE)
);

COMMENT ON TABLE INQUIRE is '1��1����';
COMMENT ON COLUMN INQUIRE.INQUIRENO is '���� ��ȣ';
COMMENT ON COLUMN INQUIRE.MEM_NO is 'ȸ�� ��ȣ';
COMMENT ON COLUMN INQUIRE.INQUIRE_TITLE is '���� ����';
COMMENT ON COLUMN INQUIRE.INQUIRE_CONTENT is '���� ����';
COMMENT ON COLUMN INQUIRE.INQUIRE_RNAME is '�����';
COMMENT ON COLUMN INQUIRE.INQUIRE_PASSWD is '�н�����';
COMMENT ON COLUMN INQUIRE.WORD is '�˻���';
COMMENT ON COLUMN INQUIRE.INQUIRE_RDATE is '�����';
COMMENT ON COLUMN INQUIRE.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN INQUIRE.INQUIRECATE is '���� ī�װ� ��ȣ';

DROP SEQUENCE INQUIRE_seq;
CREATE SEQUENCE INQUIRE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;


/**********************************/
/* Table Name: 1��1���� ÷������ */
/**********************************/
DROP TABLE INQUIRE_ATTACHFILE;
CREATE TABLE INQUIRE_ATTACHFILE(
		INQUIRE_ATTACHFILENO          		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRENO                     		NUMBER(10)		 NULL ,
		INQUIRE_FNAME                 		VARCHAR2(100)		 NOT NULL,
		INQUIRE_FUPNAME               		VARCHAR2(100)		 NOT NULL,
		INQUIRE_THUMB                 		VARCHAR2(100)		 NULL ,
		INQUIRE_FSIZE                 		NUMBER(10)		 NOT NULL,
		INQUIRE_RDATE                 		DATE		 NOT NULL,
  FOREIGN KEY (INQUIRENO) REFERENCES INQUIRE (INQUIRENO)
);

COMMENT ON TABLE INQUIRE_ATTACHFILE is '1��1���� ÷������';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_ATTACHFILENO is '÷������ ��ȣ';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRENO is '���� ��ȣ';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FNAME is '���� ���ϸ�';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FUPNAME is '���ε� ���ϸ�';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_THUMB is 'Thumb ����';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FSIZE is '���� ������';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_RDATE is '�����';

DROP SEQUENCE INQUIRE_ATTACHFILE_seq;
CREATE SEQUENCE INQUIRE_ATTACHFILE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;
  

/**********************************/
/* Table Name: 1��1���� �亯 */
/**********************************/
DROP TABLE INQUIRE_REPLY;
CREATE TABLE INQUIRE_REPLY(
		INQUIRE_REPLYNO               		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRENO                     		NUMBER(10)		 NOT NULL,
		MEM_NO                        		NUMBER(10)		 NOT NULL,
		REPLY_CONTENT                 		VARCHAR2(300)		 NOT NULL,
		REPLY_PASSWD                  		VARCHAR2(20)		 NOT NULL,
		REPLY_RDATE                   		DATE		 NOT NULL,
		MANAGERNO                     		NUMBER(10)		 NULL ,
  FOREIGN KEY (INQUIRENO) REFERENCES INQUIRE (INQUIRENO),
  FOREIGN KEY (MANAGERNO) REFERENCES MANAGER (MANAGERNO)
);

COMMENT ON TABLE INQUIRE_REPLY is '1��1���� �亯';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRE_REPLYNO is '1��1���� �亯 ��ȣ';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRENO is '���� ��ȣ';
COMMENT ON COLUMN INQUIRE_REPLY.MEM_NO is 'ȸ�� ��ȣ';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_CONTENT is '�亯 ����';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_PASSWD is '�н�����';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_RDATE is '�����';
COMMENT ON COLUMN INQUIRE_REPLY.MANAGERNO is '������ ��ȣ';

DROP SEQUENCE INQUIRE_REPLY_seq;
CREATE SEQUENCE INQUIRE_REPLY_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;


/**********************************/
/* Table Name: �������� */
/**********************************/
DROP TABLE NOTE;
CREATE TABLE NOTE(
		NOTENO                        		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NOTE_TITLE                    		VARCHAR2(50)		 NOT NULL,
		NOTE_CONTENT                  		CLOB	 NOT NULL,
		NOTE_SEQNO                    		NUMBER(10)		 NOT NULL,
		NOTE_MANAGER                  		VARCHAR2(50)		 NOT NULL,
		NOTE_PASS                     		VARCHAR2(20)		 NOT NULL,
		NOTE_DATE                     		DATE		 NOT NULL,
		MANAGERNO                     		NUMBER(10)		 NULL ,
  FOREIGN KEY (MANAGERNO) REFERENCES MANAGER (MANAGERNO)
);

COMMENT ON TABLE NOTE is '��������';
COMMENT ON COLUMN NOTE.NOTENO is '�������׹�ȣ';
COMMENT ON COLUMN NOTE.NOTE_TITLE is '�������� ����';
COMMENT ON COLUMN NOTE.NOTE_CONTENT is '�������� ����';
COMMENT ON COLUMN NOTE.NOTE_SEQNO is '�������� ��¼���';
COMMENT ON COLUMN NOTE.NOTE_MANAGER is '�������� �ۼ���';
COMMENT ON COLUMN NOTE.NOTE_PASS is '�������� �н�����';
COMMENT ON COLUMN NOTE.NOTE_DATE is '�����';
COMMENT ON COLUMN NOTE.MANAGERNO is '������ ��ȣ';

DROP SEQUENCE NOTE_seq;
CREATE SEQUENCE NOTE_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;
  
  
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
		NOTENO                        		NUMBER(10)		 NULL ,
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
  

/**********************************/
/* Table Name: ��ǰ ī�װ� �׷� */
/**********************************/
CREATE TABLE ITEMGRP(
		GRPNO                         		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR2(100)		 NOT NULL,
		VISIBLENO                     		NUMBER(7)		 NOT NULL,
		VISIBLE                       		CHAR(1)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL
);

COMMENT ON TABLE ITEMGRP is '��ǰ ī�װ� �׷�';
COMMENT ON COLUMN ITEMGRP.GRPNO is 'ī�װ� �׷� ��ȣ';
COMMENT ON COLUMN ITEMGRP.NAME is '�׷� �̸�';
COMMENT ON COLUMN ITEMGRP.VISIBLENO is '��� ����';
COMMENT ON COLUMN ITEMGRP.VISIBLE is '��� ���';
COMMENT ON COLUMN ITEMGRP.RDATE is '�׷� ������';


/**********************************/
/* Table Name: ��ǰ ī�װ� */
/**********************************/
CREATE TABLE ITEMCATE(
		ITEMCATENO                    		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR2(100)		 NOT NULL,
		VISIBLENO                     		NUMBER(7)		 NOT NULL,
		VISIBLE                       		CHAR(1)		 NOT NULL,
		ITEMCNT                       		INTEGER(10)		 DEFAULT 0		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		GRPNO                         		NUMBER(10)		 NULL ,
  FOREIGN KEY (GRPNO) REFERENCES ITEMGRP (GRPNO)
);

COMMENT ON TABLE ITEMCATE is '��ǰ ī�װ�';
COMMENT ON COLUMN ITEMCATE.ITEMCATENO is '��ǰ ī�װ���ȣ';
COMMENT ON COLUMN ITEMCATE.NAME is 'ī�װ� �̸�';
COMMENT ON COLUMN ITEMCATE.VISIBLENO is '��� ����';
COMMENT ON COLUMN ITEMCATE.VISIBLE is '��� ���';
COMMENT ON COLUMN ITEMCATE.ITEMCNT is '��ϵ� ��ǰ ��';
COMMENT ON COLUMN ITEMCATE.RDATE is 'ī�װ� ������';
COMMENT ON COLUMN ITEMCATE.GRPNO is 'ī�װ� �׷� ��ȣ';


/**********************************/
/* Table Name: �귣�� */
/**********************************/
CREATE TABLE BRAND(
		BRANDNO                       		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		BRAND_NAME                    		VARCHAR2(100)		 NOT NULL
);

COMMENT ON TABLE BRAND is '�귣��';
COMMENT ON COLUMN BRAND.BRANDNO is '�귣�� ��ȣ';
COMMENT ON COLUMN BRAND.BRAND_NAME is '�귣�� �̸�';


/**********************************/
/* Table Name: ��ǰ */
/**********************************/
CREATE TABLE ITEM(
		ITEMNO                        		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		GRPNO                         		NUMBER(10)		 NOT NULL,
		ITEM_NAME                     		VARCHAR2(500)		 NOT NULL,
		ITEM_STOCK                    		NUMBER(10)		 NOT NULL,
		ITEM_PRICE                    		NUMBER(10)		 NOT NULL,
		ITEM_COST                     		NUMBER(10)		 NOT NULL,
		DISCOUNT_RATE                 		NUMBER(10)		 NOT NULL,
		ITEM_CONTENT                  		CLOB(4000)		 NOT NULL,
		ITEM_TYPE                     		VARCHAR2(100)		 NOT NULL,
		ITEM_EFFECT                   		VARCHAR2(100)		 NOT NULL,
		ITEM_ORIGIN                   		VARCHAR2(50)		 NOT NULL,
		ITEM_VISIBLE                  		CHAR(1)		 NOT NULL,
		ITEM_VISIBLENO                		NUMBER(10)		 NOT NULL,
		ITEM_RECOM                    		NUMBER(10)		 NOT NULL,
		ITEM_VIEW                     		NUMBER(10)		 NOT NULL,
		ITEM_RDATE                    		DATE		 NOT NULL,
		UPFILE                        		VARCHAR2(100)		 NULL ,
		THUMB                         		VARCHAR2(100)		 NULL ,
		FSIZE                         		NUMBER(10)		 NULL ,
		ITEMCATENO                    		NUMBER(10)		 NULL ,
		BRANDNO                       		NUMBER(10)		 NULL ,
  FOREIGN KEY (ITEMCATENO) REFERENCES ITEMCATE (ITEMCATENO),
  FOREIGN KEY (BRANDNO) REFERENCES BRAND (BRANDNO)
);

COMMENT ON TABLE ITEM is '��ǰ';
COMMENT ON COLUMN ITEM.ITEMNO is '��ǰ ��� ��ȣ';
COMMENT ON COLUMN ITEM.GRPNO is '���� ī�װ� ��ȣ';
COMMENT ON COLUMN ITEM.ITEM_NAME is '��ǰ �̸�';
COMMENT ON COLUMN ITEM.ITEM_STOCK is '��ǰ ���';
COMMENT ON COLUMN ITEM.ITEM_PRICE is '��ǰ ����';
COMMENT ON COLUMN ITEM.ITEM_COST is '��ǰ ����';
COMMENT ON COLUMN ITEM.DISCOUNT_RATE is '���η�';
COMMENT ON COLUMN ITEM.ITEM_CONTENT is '��ǰ ����';
COMMENT ON COLUMN ITEM.ITEM_TYPE is '��ǰ ����';
COMMENT ON COLUMN ITEM.ITEM_EFFECT is '��ǰ �Ǻ� ȿ��';
COMMENT ON COLUMN ITEM.ITEM_ORIGIN is '������';
COMMENT ON COLUMN ITEM.ITEM_VISIBLE is '���';
COMMENT ON COLUMN ITEM.ITEM_VISIBLENO is '��¼���';
COMMENT ON COLUMN ITEM.ITEM_RECOM is '��õ��';
COMMENT ON COLUMN ITEM.ITEM_VIEW is '��ȸ��';
COMMENT ON COLUMN ITEM.ITEM_RDATE is '��ǰ ��� ��¥';
COMMENT ON COLUMN ITEM.UPFILE is '���ε� ����';
COMMENT ON COLUMN ITEM.THUMB is '����� ����';
COMMENT ON COLUMN ITEM.FSIZE is '������';
COMMENT ON COLUMN ITEM.ITEMCATENO is '��ǰ ī�װ���ȣ';
COMMENT ON COLUMN ITEM.BRANDNO is '�귣�� ��ȣ';


/**********************************/
/* Table Name: ��ǰ���� */
/**********************************/
CREATE TABLE ITEMPHOTO(
		ITEMPHOTONO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		ITEMNO                        		NUMBER(10)		 NULL ,
		FNAME                         		VARCHAR2(100)		 NULL ,
		FUPNAME                       		VARCHAR2(100)		 NULL ,
		THUMB                         		VARCHAR2(100)		 NULL ,
		FSIZE                         		NUMBER(10)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
  FOREIGN KEY (ITEMNO) REFERENCES ITEM (ITEMNO)
);

COMMENT ON TABLE ITEMPHOTO is '��ǰ����';
COMMENT ON COLUMN ITEMPHOTO.ITEMPHOTONO is '��ǰ���� ��ȣ';
COMMENT ON COLUMN ITEMPHOTO.ITEMNO is '��ǰ ��� ��ȣ';
COMMENT ON COLUMN ITEMPHOTO.FNAME is '���� ���ϸ�';
COMMENT ON COLUMN ITEMPHOTO.FUPNAME is '���ε� ���ϸ�';
COMMENT ON COLUMN ITEMPHOTO.THUMB is 'Thumb ���ϸ�';
COMMENT ON COLUMN ITEMPHOTO.FSIZE is '���� ������';
COMMENT ON COLUMN ITEMPHOTO.RDATE is '�����';


/**********************************/
/* Table Name: ��ٱ��� */
/**********************************/
CREATE TABLE SHOPPING_CART(
		SHOPPING_CARTNO               		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMNO                         		NUMBER(10)		 NOT NULL,
		ITEMNO                        		NUMBER(10)		 NOT NULL,
		QUANTITY                      		NUMBER(10)		 NOT NULL,
  FOREIGN KEY (ITEMNO) REFERENCES ITEM (ITEMNO),
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO)
);

COMMENT ON TABLE SHOPPING_CART is '��ٱ���';
COMMENT ON COLUMN SHOPPING_CART.SHOPPING_CARTNO is '��ٱ���no';
COMMENT ON COLUMN SHOPPING_CART.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN SHOPPING_CART.ITEMNO is '��ǰno';
COMMENT ON COLUMN SHOPPING_CART.QUANTITY is '����';


/**********************************/
/* Table Name: �ֹ� */
/**********************************/
CREATE TABLE PORDER(
		PORDERNO                      		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMNO                         		NUMBER(10)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		ITEM_PRICE_SUM                		NUMBER(10)		 NOT NULL,
		ITEM_DISCOUNT_SUM             		NUMBER(10)		 NOT NULL,
		COUPON_DISCOUNT_SUM           		NUMBER(10)		 NOT NULL,
		DELIVERY_FEE                  		NUMBER(10)		 NOT NULL,
		PAYMENT_PRICE                 		NUMBER(10)		 NOT NULL,
		PORDER_STATUS                 		CHAR(1)		 NOT NULL,
		PORDER_ZIP_CODE               		NUMBER(10)		 NOT NULL,
		PORDER_ADDRESS                		VARCHAR2(1000)		 NOT NULL,
		PORDER_DELIVERY_REQUEST       		VARCHAR2(1000)		 NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO)
);

COMMENT ON TABLE PORDER is '�ֹ�';
COMMENT ON COLUMN PORDER.PORDERNO is '�ֹ�no';
COMMENT ON COLUMN PORDER.MEMNO is 'ȸ��no';
COMMENT ON COLUMN PORDER.RDATE is '�ֹ���¥';
COMMENT ON COLUMN PORDER.ITEM_PRICE_SUM is '�ǸŰ��Ѿ�';
COMMENT ON COLUMN PORDER.ITEM_DISCOUNT_SUM is '�����Ѿ�';
COMMENT ON COLUMN PORDER.COUPON_DISCOUNT_SUM is '��������';
COMMENT ON COLUMN PORDER.DELIVERY_FEE is '��ۺ�';
COMMENT ON COLUMN PORDER.PAYMENT_PRICE is '���������ݾ�';
COMMENT ON COLUMN PORDER.PORDER_STATUS is '���� ����';
COMMENT ON COLUMN PORDER.PORDER_ZIP_CODE is '�����ȣ';
COMMENT ON COLUMN PORDER.PORDER_ADDRESS is '�����';
COMMENT ON COLUMN PORDER.PORDER_DELIVERY_REQUEST is '��ۿ�û����';


/**********************************/
/* Table Name: �ֹ��� */
/**********************************/
CREATE TABLE PORDER_DETAIL(
		PORDER_DETAILNO               		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		PORDERNO                      		NUMBER(10)		 NOT NULL,
		ITEMNO                        		NUMBER(10)		 NOT NULL,
		QUANTITY                      		NUMBER(10)		 NOT NULL,
		ITEM_PRICE_SUM                		NUMBER(10)		 NOT NULL,
		ITEM_DISCOUNT_SUM             		NUMBER(10)		 NOT NULL,
		PAYMENT_PRICE                 		NUMBER(10)		 NOT NULL,
		PORDER_DETAIL_STATUS          		CHAR(1)		 NOT NULL,
		TRACKINGNO                    		NUMBER(10)		 NULL ,
  FOREIGN KEY (PORDERNO) REFERENCES PORDER (PORDERNO),
  FOREIGN KEY (ITEMNO) REFERENCES ITEM (ITEMNO)
);

COMMENT ON TABLE PORDER_DETAIL is '�ֹ���';
COMMENT ON COLUMN PORDER_DETAIL.PORDER_DETAILNO is '�ֹ���no';
COMMENT ON COLUMN PORDER_DETAIL.PORDERNO is '�ֹ�no';
COMMENT ON COLUMN PORDER_DETAIL.ITEMNO is '��ǰno';
COMMENT ON COLUMN PORDER_DETAIL.QUANTITY is '����';
COMMENT ON COLUMN PORDER_DETAIL.ITEM_PRICE_SUM is '�ǸŰ��Ѿ�';
COMMENT ON COLUMN PORDER_DETAIL.ITEM_DISCOUNT_SUM is '�����Ѿ�';
COMMENT ON COLUMN PORDER_DETAIL.PAYMENT_PRICE is '����������';
COMMENT ON COLUMN PORDER_DETAIL.PORDER_DETAIL_STATUS is '�ֹ��󼼽��λ���';
COMMENT ON COLUMN PORDER_DETAIL.TRACKINGNO is '������ȣ';


/**********************************/
/* Table Name: �̺�Ʈ���� */
/**********************************/
CREATE TABLE COUPON(
		COUPONNO                      		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		CPIMG                         		VARCHAR2(100)		 NULL ,
		CPUPIMG                       		VARCHAR2(100)		 NULL ,
		CPTHUMB                       		VARCHAR2(100)		 NULL ,
		CPNAME                        		VARCHAR2(200)		 NOT NULL,
		CPDISCOUNT                    		NUMBER(10)		 NOT NULL,
		CPSTOCK                       		NUMBER(10)		 NOT NULL,
		CPCATE                        		VARCHAR2(100)		 NULL 
);

COMMENT ON TABLE COUPON is '�̺�Ʈ����';
COMMENT ON COLUMN COUPON.COUPONNO is '����no';
COMMENT ON COLUMN COUPON.CPIMG is '�����̹���';
COMMENT ON COLUMN COUPON.CPUPIMG is '�������ε����ϸ��̹���';
COMMENT ON COLUMN COUPON.CPTHUMB is '�����̹��������';
COMMENT ON COLUMN COUPON.CPNAME is '�����̸�';
COMMENT ON COLUMN COUPON.CPDISCOUNT is '�������αݾ�';
COMMENT ON COLUMN COUPON.CPSTOCK is '�������';
COMMENT ON COLUMN COUPON.CPCATE is '��밡��ī�װ�';


/**********************************/
/* Table Name: �����߱޳��� */
/**********************************/
CREATE TABLE COUPON_ISSUE(
		COUPON_ISSUENO                		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMNO                         		NUMBER(10)		 NOT NULL,
		COUPONNO                      		NUMBER(10)		 NOT NULL,
		CPCNT                         		NUMBER(10)		 NOT NULL,
		CPISSUE                       		DATE		 NOT NULL,
		CPEXPIRED                     		DATE		 NOT NULL,
		CPSTATUS                      		CHAR(1)		 NOT NULL,
  FOREIGN KEY (COUPONNO) REFERENCES COUPON (COUPONNO),
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO)
);

COMMENT ON TABLE COUPON_ISSUE is '�����߱޳���';
COMMENT ON COLUMN COUPON_ISSUE.COUPON_ISSUENO is '�����߱�no';
COMMENT ON COLUMN COUPON_ISSUE.MEMNO is 'ȸ��no';
COMMENT ON COLUMN COUPON_ISSUE.COUPONNO is '����no';
COMMENT ON COLUMN COUPON_ISSUE.CPCNT is '�����߱޼���';
COMMENT ON COLUMN COUPON_ISSUE.CPISSUE is '�����߱���';
COMMENT ON COLUMN COUPON_ISSUE.CPEXPIRED is '����������';
COMMENT ON COLUMN COUPON_ISSUE.CPSTATUS is '��������';


/**********************************/
/* Table Name: ���� ��� ���� */
/**********************************/
CREATE TABLE COUPON_USE(
		COUPON_USENO                  		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		PORDERNO                      		NUMBER(10)		 NOT NULL,
		COUPON_ISSUENO                		NUMBER(10)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		CPSTATUS                      		CHAR(1)		 NOT NULL,
  FOREIGN KEY (COUPON_ISSUENO) REFERENCES COUPON_ISSUE (COUPON_ISSUENO),
  FOREIGN KEY (PORDERNO) REFERENCES PORDER (PORDERNO)
);

COMMENT ON TABLE COUPON_USE is '���� ��� ����';
COMMENT ON COLUMN COUPON_USE.COUPON_USENO is '���� ���no';
COMMENT ON COLUMN COUPON_USE.PORDERNO is '�ֹ�no';
COMMENT ON COLUMN COUPON_USE.COUPON_ISSUENO is '�����߱�no';
COMMENT ON COLUMN COUPON_USE.RDATE is '���� �����';
COMMENT ON COLUMN COUPON_USE.CPSTATUS is '��������';


/**********************************/
/* Table Name: ��� */
/**********************************/
CREATE TABLE DELIVERY(
		TRACKINGNO                    		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		PORDER_COMPANY                		VARCHAR2(100)		 NULL ,
		PORDERNO                      		NUMBER(10)		 NULL ,
		PORDER_DETAILNO               		NUMBER(10)		 NULL ,
		DMAN                          		VARCHAR2(30)		 NULL ,
		DELIVERY_DATE                 		DATE		 NULL ,
		STATUS                        		CHAR(1)		 NULL 
);

COMMENT ON TABLE DELIVERY is '���';
COMMENT ON COLUMN DELIVERY.TRACKINGNO is '������ȣ';
COMMENT ON COLUMN DELIVERY.PORDER_COMPANY is '��ۿ�ûȸ��';
COMMENT ON COLUMN DELIVERY.PORDERNO is '�ֹ���ȣ';
COMMENT ON COLUMN DELIVERY.PORDER_DETAILNO is '�ֹ��󼼹�ȣ';
COMMENT ON COLUMN DELIVERY.DMAN is '�����';
COMMENT ON COLUMN DELIVERY.DELIVERY_DATE is '��ۻ�������ó����';
COMMENT ON COLUMN DELIVERY.STATUS is '��ۻ���';


/**********************************/
/* Table Name: ȸ�� ���� */
/**********************************/
CREATE TABLE MEM_WISH(
		MEM_WISH_NO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEM_WISH_SEQNO                		NUMBER(10)		 NOT NULL,
		WORD                          		VARCHAR2(100)		 NULL ,
		MEMNO                         		NUMBER(10)		 NULL ,
		ITEMNO                        		NUMBER(10)		 NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO),
  FOREIGN KEY (ITEMNO) REFERENCES ITEM (ITEMNO)
);

COMMENT ON TABLE MEM_WISH is 'ȸ�� ����';
COMMENT ON COLUMN MEM_WISH.MEM_WISH_NO is 'ȸ�� �� ��ȣ';
COMMENT ON COLUMN MEM_WISH.MEM_WISH_SEQNO is 'ȸ�� �� ��� ��ȣ';
COMMENT ON COLUMN MEM_WISH.WORD is 'ȸ�� �� �˻���';
COMMENT ON COLUMN MEM_WISH.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN MEM_WISH.ITEMNO is '��ǰ ��� ��ȣ';


/**********************************/
/* Table Name: ��ǰ �ı� */
/**********************************/
CREATE TABLE REVIEW(
		REVIEWNO                      		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		REVIEW_CONTENT                		VARCHAR2(1000)		 NOT NULL,
		REVIEW_RATE                   		NUMBER(1)		 NOT NULL,
		REVIEW_DATE                   		DATE		 NOT NULL,
		MEMNO                         		NUMBER(10)		 NULL ,
		ITEMNO                        		NUMBER(10)		 NULL ,
		PORDERNO                      		NUMBER(10)		 NULL ,
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO),
  FOREIGN KEY (ITEMNO) REFERENCES ITEM (ITEMNO),
  FOREIGN KEY (PORDERNO) REFERENCES PORDER (PORDERNO)
);

COMMENT ON TABLE REVIEW is '��ǰ �ı�';
COMMENT ON COLUMN REVIEW.REVIEWNO is '��۹�ȣ';
COMMENT ON COLUMN REVIEW.REVIEW_CONTENT is '���� ����';
COMMENT ON COLUMN REVIEW.REVIEW_RATE is '���� ����';
COMMENT ON COLUMN REVIEW.REVIEW_DATE is '�����';
COMMENT ON COLUMN REVIEW.MEMNO is 'ȸ����ȣ';
COMMENT ON COLUMN REVIEW.ITEMNO is '��ǰ ��� ��ȣ';
COMMENT ON COLUMN REVIEW.PORDERNO is '�ֹ�no';


/**********************************/
/* Table Name: ��ǰ�ı� ÷������ */
/**********************************/
CREATE TABLE REVIEWPHOTO(
		REVIEWPHOTONO                 		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		FNAME                         		VARCHAR2(100)		 NULL ,
		FUPNAME                       		VARCHAR2(100)		 NULL ,
		THUMB                         		VARCHAR2(100)		 NULL ,
		FSIZE                         		NUMBER(10)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL,
		REVIEWNO                      		NUMBER(10)		 NULL ,
  FOREIGN KEY (REVIEWNO) REFERENCES REVIEW (REVIEWNO)
);

COMMENT ON TABLE REVIEWPHOTO is '��ǰ�ı� ÷������';
COMMENT ON COLUMN REVIEWPHOTO.REVIEWPHOTONO is '��ǰ���� ��ȣ';
COMMENT ON COLUMN REVIEWPHOTO.FNAME is '���� ���ϸ�';
COMMENT ON COLUMN REVIEWPHOTO.FUPNAME is '���ε� ���ϸ�';
COMMENT ON COLUMN REVIEWPHOTO.THUMB is 'Thumb ���ϸ�';
COMMENT ON COLUMN REVIEWPHOTO.FSIZE is '���� ������';
COMMENT ON COLUMN REVIEWPHOTO.RDATE is '�����';
COMMENT ON COLUMN REVIEWPHOTO.REVIEWNO is '��۹�ȣ';


