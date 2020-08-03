/**********************************/
/* Table Name: 1��1���� �亯 */
/**********************************/
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