/**********************************/
/* Table Name: 회원 */
/**********************************/
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

COMMENT ON TABLE MEM is '회원';
COMMENT ON COLUMN MEM.MEMNO is '회원번호';
COMMENT ON COLUMN MEM.MEM_IMG is '회원 사진';
COMMENT ON COLUMN MEM.MEM_ID is '회원 아이디';
COMMENT ON COLUMN MEM.MEM_PW is '회원 비밀번호';
COMMENT ON COLUMN MEM.MEM_NAME is '회원 이름';
COMMENT ON COLUMN MEM.MEM_YY is '회원 년';
COMMENT ON COLUMN MEM.MEM_MM is '회원 월';
COMMENT ON COLUMN MEM.MEM_DD is '회원 일';
COMMENT ON COLUMN MEM.MEM_TELECOM is '회원 통신사';
COMMENT ON COLUMN MEM.MEM_PHONE is '회원 전화번호';
COMMENT ON COLUMN MEM.MEM_EMAIL is '회원 이메일';
COMMENT ON COLUMN MEM.SIGNDATE is '가입일';
COMMENT ON COLUMN MEM.MEMLVNO is '회원 등급번호';
