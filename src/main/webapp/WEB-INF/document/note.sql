/**********************************/
/* Table Name: 공지사항 */
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

COMMENT ON TABLE NOTE is '공지사항';
COMMENT ON COLUMN NOTE.NOTENO is '공지사항번호';
COMMENT ON COLUMN NOTE.NOTE_TITLE is '공지사항 제목';
COMMENT ON COLUMN NOTE.NOTE_CONTENT is '공지사항 내용';
COMMENT ON COLUMN NOTE.NOTE_SEQNO is '공지사항 출력순서';
COMMENT ON COLUMN NOTE.NOTE_MANAGER is '공지사항 작성자';
COMMENT ON COLUMN NOTE.NOTE_DATE is '등록일';
COMMENT ON COLUMN NOTE.MANAGERNO is '관리자 번호';
COMMENT ON COLUMN NOTE.NOTECATENO is '공지사항 카테고리 번호';

DROP SEQUENCE NOTE_seq;
CREATE SEQUENCE NOTE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;