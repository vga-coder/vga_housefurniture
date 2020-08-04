/**********************************/
/* Table Name: 관리자 등급 */
/**********************************/
DROP TABLE MANAGERLV;
CREATE TABLE MANAGERLV(
		MANAGERLVNO                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MANAGERLV_NAME                		VARCHAR2(20)		 NOT NULL,
		MANAGERLV_PAY                 		NUMBER(20)		 NOT NULL,
		MANAGERLV_DO                  		CLOB		 NULL 
);

COMMENT ON TABLE MANAGERLV is '관리자 등급';
COMMENT ON COLUMN MANAGERLV.MANAGERLVNO is '관리자 등급번호';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_NAME is '관리자 등급이름';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_PAY is '관리자 등급 별 연봉';
COMMENT ON COLUMN MANAGERLV.MANAGERLV_DO is '관리자 등급업무';

DROP SEQUENCE MANAGERLV_seq;
CREATE SEQUENCE MANAGERLV_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 관리자 */
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

COMMENT ON TABLE MANAGER is '관리자';
COMMENT ON COLUMN MANAGER.MANAGERNO is '관리자 번호';
COMMENT ON COLUMN MANAGER.MANAGER_IMG is '관리자 사진';
COMMENT ON COLUMN MANAGER.MANAGER_ID is '관리자 아이디';
COMMENT ON COLUMN MANAGER.MANAGER_PW is '관리자 비밀번호';
COMMENT ON COLUMN MANAGER.MANAGER_NAME is '관리자 이름';
COMMENT ON COLUMN MANAGER.MANAGER_YY is '관리자 년';
COMMENT ON COLUMN MANAGER.MANAGER_MM is '관리자 월';
COMMENT ON COLUMN MANAGER.MANAGER_DD is '관리자 일';
COMMENT ON COLUMN MANAGER.MANAGER_TELECOM is '관리자 통신사';
COMMENT ON COLUMN MANAGER.MANAGER_PHONE is '관리자 전화번호';
COMMENT ON COLUMN MANAGER.MANAGER_EMAIL is '관리자 이메일';
COMMENT ON COLUMN MANAGER.MANAGER_POSTCODE is '관리자 우편번호';
COMMENT ON COLUMN MANAGER.MANAGER_ADDRESS1 is '관리자 주소1';
COMMENT ON COLUMN MANAGER.MANAGER_ADDRESS2 is '관리자 주소2';
COMMENT ON COLUMN MANAGER.JOINDATE is '입사일';
COMMENT ON COLUMN MANAGER.MANAGERLVNO is '관리자 등급번호';

DROP SEQUENCE MANAGER_seq;
CREATE SEQUENCE MANAGER_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 회원 등급 */
/**********************************/
DROP TABLE MEMLV;
CREATE TABLE MEMLV(
		MEMLVNO                       		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMLV_NAME                    		VARCHAR2(20)		 NOT NULL,
		MEMLV_IMG                     		VARCHAR2(1000)		 NULL ,
		MEMLV_CONDITION               		CLOB		 NOT NULL,
		MEMLV_BENEFIT                 		CLOB		 NOT NULL
);

COMMENT ON TABLE MEMLV is '회원 등급';
COMMENT ON COLUMN MEMLV.MEMLVNO is '회원 등급번호';
COMMENT ON COLUMN MEMLV.MEMLV_NAME is '회원 등급이름';
COMMENT ON COLUMN MEMLV.MEMLV_IMG is '회원 등급로고';
COMMENT ON COLUMN MEMLV.MEMLV_CONDITION is '회원 등급조건';
COMMENT ON COLUMN MEMLV.MEMLV_BENEFIT is '회원 등급혜택';

DROP SEQUENCE MEMLV_seq;
CREATE SEQUENCE MEMLV_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 회원 */
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

DROP SEQUENCE mem_seq;
CREATE SEQUENCE mem_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 배송지 */
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

COMMENT ON TABLE DESTINATION is '배송지';
COMMENT ON COLUMN DESTINATION.DESTINATIONNO is '배송지번호';
COMMENT ON COLUMN DESTINATION.RECIPIENT is '배송받는사람';
COMMENT ON COLUMN DESTINATION.RECIPIENT_PHONE is '배송받는사람 번호';
COMMENT ON COLUMN DESTINATION.POSTCODE is '우편번호';
COMMENT ON COLUMN DESTINATION.ADDRESS1 is '주소1';
COMMENT ON COLUMN DESTINATION.ADDRESS2 is '주소';
COMMENT ON COLUMN DESTINATION.BASIC is '기본배송지';
COMMENT ON COLUMN DESTINATION.MEMNO is '회원번호';

DROP SEQUENCE DESTINATION_seq;
CREATE SEQUENCE DESTINATION_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 문의 카테고리 */
/**********************************/
DROP TABLE INQUIRECATE;
CREATE TABLE INQUIRECATE(
		INQUIRECATE                   		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		INQUIRE_NAME                  		VARCHAR2(50)		 NOT NULL,
        INQUIRECNT                       	NUMBER(30)		 DEFAULT 0		 NOT NULL
);

COMMENT ON TABLE INQUIRECATE is '문의 카테고리';
COMMENT ON COLUMN INQUIRECATE.INQUIRECATE is '문의 카테고리 번호';
COMMENT ON COLUMN INQUIRECATE.INQUIRE_NAME is '이름';
COMMENT ON COLUMN INQUIRECATE.INQUIRECNT is '등록된 문의 수';

DROP SEQUENCE INQUIRECATE_seq;
CREATE SEQUENCE INQUIRECATE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 1대1문의 */
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

COMMENT ON TABLE INQUIRE is '1대1문의';
COMMENT ON COLUMN INQUIRE.INQUIRENO is '문의 번호';
COMMENT ON COLUMN INQUIRE.MEM_NO is '회원 번호';
COMMENT ON COLUMN INQUIRE.INQUIRE_TITLE is '문의 제목';
COMMENT ON COLUMN INQUIRE.INQUIRE_CONTENT is '문의 내용';
COMMENT ON COLUMN INQUIRE.INQUIRE_RNAME is '등록자';
COMMENT ON COLUMN INQUIRE.INQUIRE_PASSWD is '패스워드';
COMMENT ON COLUMN INQUIRE.WORD is '검색어';
COMMENT ON COLUMN INQUIRE.INQUIRE_RDATE is '등록일';
COMMENT ON COLUMN INQUIRE.MEMNO is '회원번호';
COMMENT ON COLUMN INQUIRE.INQUIRECATE is '문의 카테고리 번호';

DROP SEQUENCE INQUIRE_seq;
CREATE SEQUENCE INQUIRE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 1대1문의 첨부파일 */
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

COMMENT ON TABLE INQUIRE_ATTACHFILE is '1대1문의 첨부파일';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_ATTACHFILENO is '첨부파일 번호';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRENO is '문의 번호';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FNAME is '원본 파일명';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FUPNAME is '업로드 파일명';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_THUMB is 'Thumb 파일';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_FSIZE is '파일 사이즈';
COMMENT ON COLUMN INQUIRE_ATTACHFILE.INQUIRE_RDATE is '등록일';

DROP SEQUENCE INQUIRE_ATTACHFILE_seq;
CREATE SEQUENCE INQUIRE_ATTACHFILE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;
  

/**********************************/
/* Table Name: 1대1문의 답변 */
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

COMMENT ON TABLE INQUIRE_REPLY is '1대1문의 답변';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRE_REPLYNO is '1대1문의 답변 번호';
COMMENT ON COLUMN INQUIRE_REPLY.INQUIRENO is '문의 번호';
COMMENT ON COLUMN INQUIRE_REPLY.MEM_NO is '회원 번호';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_CONTENT is '답변 내용';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_PASSWD is '패스워드';
COMMENT ON COLUMN INQUIRE_REPLY.REPLY_RDATE is '등록일';
COMMENT ON COLUMN INQUIRE_REPLY.MANAGERNO is '관리자 번호';

DROP SEQUENCE INQUIRE_REPLY_seq;
CREATE SEQUENCE INQUIRE_REPLY_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;


/**********************************/
/* Table Name: 공지사항 */
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

COMMENT ON TABLE NOTE is '공지사항';
COMMENT ON COLUMN NOTE.NOTENO is '공지사항번호';
COMMENT ON COLUMN NOTE.NOTE_TITLE is '공지사항 제목';
COMMENT ON COLUMN NOTE.NOTE_CONTENT is '공지사항 내용';
COMMENT ON COLUMN NOTE.NOTE_SEQNO is '공지사항 출력순서';
COMMENT ON COLUMN NOTE.NOTE_MANAGER is '공지사항 작성자';
COMMENT ON COLUMN NOTE.NOTE_PASS is '공지사항 패스워드';
COMMENT ON COLUMN NOTE.NOTE_DATE is '등록일';
COMMENT ON COLUMN NOTE.MANAGERNO is '관리자 번호';

DROP SEQUENCE NOTE_seq;
CREATE SEQUENCE NOTE_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;
  
  
/**********************************/
/* Table Name: 공지사항 첨부파일 */
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

COMMENT ON TABLE NOTEPHOTO is '공지사항 첨부파일';
COMMENT ON COLUMN NOTEPHOTO.NOTEPHOTONO is '상품사진 번호';
COMMENT ON COLUMN NOTEPHOTO.FNAME is '원본 파일명';
COMMENT ON COLUMN NOTEPHOTO.FUPNAME is '업로드 파일명';
COMMENT ON COLUMN NOTEPHOTO.THUMB is 'Thumb 파일명';
COMMENT ON COLUMN NOTEPHOTO.FSIZE is '파일 사이즈';
COMMENT ON COLUMN NOTEPHOTO.RDATE is '등록일';
COMMENT ON COLUMN NOTEPHOTO.NOTENO is '공지사항번호';

DROP SEQUENCE NOTEPHOTO_seq;
CREATE SEQUENCE NOTEPHOTO_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;
  

/**********************************/
/* Table Name: 상품 카테고리 그룹 */
/**********************************/
CREATE TABLE ITEMGRP(
		GRPNO                         		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR2(100)		 NOT NULL,
		VISIBLENO                     		NUMBER(7)		 NOT NULL,
		VISIBLE                       		CHAR(1)		 NOT NULL,
		RDATE                         		DATE		 NOT NULL
);

COMMENT ON TABLE ITEMGRP is '상품 카테고리 그룹';
COMMENT ON COLUMN ITEMGRP.GRPNO is '카테고리 그룹 번호';
COMMENT ON COLUMN ITEMGRP.NAME is '그룹 이름';
COMMENT ON COLUMN ITEMGRP.VISIBLENO is '출력 순서';
COMMENT ON COLUMN ITEMGRP.VISIBLE is '출력 모드';
COMMENT ON COLUMN ITEMGRP.RDATE is '그룹 생성일';


/**********************************/
/* Table Name: 상품 카테고리 */
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

COMMENT ON TABLE ITEMCATE is '상품 카테고리';
COMMENT ON COLUMN ITEMCATE.ITEMCATENO is '상품 카테고리번호';
COMMENT ON COLUMN ITEMCATE.NAME is '카테고리 이름';
COMMENT ON COLUMN ITEMCATE.VISIBLENO is '출력 순서';
COMMENT ON COLUMN ITEMCATE.VISIBLE is '출력 모드';
COMMENT ON COLUMN ITEMCATE.ITEMCNT is '등록된 상품 수';
COMMENT ON COLUMN ITEMCATE.RDATE is '카테고리 생성일';
COMMENT ON COLUMN ITEMCATE.GRPNO is '카테고리 그룹 번호';


/**********************************/
/* Table Name: 브랜드 */
/**********************************/
CREATE TABLE BRAND(
		BRANDNO                       		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		BRAND_NAME                    		VARCHAR2(100)		 NOT NULL
);

COMMENT ON TABLE BRAND is '브랜드';
COMMENT ON COLUMN BRAND.BRANDNO is '브랜드 번호';
COMMENT ON COLUMN BRAND.BRAND_NAME is '브랜드 이름';


/**********************************/
/* Table Name: 상품 */
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

COMMENT ON TABLE ITEM is '상품';
COMMENT ON COLUMN ITEM.ITEMNO is '상품 등록 번호';
COMMENT ON COLUMN ITEM.GRPNO is '메인 카테고리 번호';
COMMENT ON COLUMN ITEM.ITEM_NAME is '상품 이름';
COMMENT ON COLUMN ITEM.ITEM_STOCK is '상품 재고';
COMMENT ON COLUMN ITEM.ITEM_PRICE is '상품 정가';
COMMENT ON COLUMN ITEM.ITEM_COST is '상품 원가';
COMMENT ON COLUMN ITEM.DISCOUNT_RATE is '할인률';
COMMENT ON COLUMN ITEM.ITEM_CONTENT is '상품 설명';
COMMENT ON COLUMN ITEM.ITEM_TYPE is '상품 유형';
COMMENT ON COLUMN ITEM.ITEM_EFFECT is '상품 피부 효과';
COMMENT ON COLUMN ITEM.ITEM_ORIGIN is '원산지';
COMMENT ON COLUMN ITEM.ITEM_VISIBLE is '출력';
COMMENT ON COLUMN ITEM.ITEM_VISIBLENO is '출력순서';
COMMENT ON COLUMN ITEM.ITEM_RECOM is '추천수';
COMMENT ON COLUMN ITEM.ITEM_VIEW is '조회수';
COMMENT ON COLUMN ITEM.ITEM_RDATE is '상품 등록 날짜';
COMMENT ON COLUMN ITEM.UPFILE is '업로드 파일';
COMMENT ON COLUMN ITEM.THUMB is '썸네일 파일';
COMMENT ON COLUMN ITEM.FSIZE is '사이즈';
COMMENT ON COLUMN ITEM.ITEMCATENO is '상품 카테고리번호';
COMMENT ON COLUMN ITEM.BRANDNO is '브랜드 번호';


/**********************************/
/* Table Name: 상품사진 */
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

COMMENT ON TABLE ITEMPHOTO is '상품사진';
COMMENT ON COLUMN ITEMPHOTO.ITEMPHOTONO is '상품사진 번호';
COMMENT ON COLUMN ITEMPHOTO.ITEMNO is '상품 등록 번호';
COMMENT ON COLUMN ITEMPHOTO.FNAME is '원본 파일명';
COMMENT ON COLUMN ITEMPHOTO.FUPNAME is '업로드 파일명';
COMMENT ON COLUMN ITEMPHOTO.THUMB is 'Thumb 파일명';
COMMENT ON COLUMN ITEMPHOTO.FSIZE is '파일 사이즈';
COMMENT ON COLUMN ITEMPHOTO.RDATE is '등록일';


/**********************************/
/* Table Name: 장바구니 */
/**********************************/
CREATE TABLE SHOPPING_CART(
		SHOPPING_CARTNO               		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		MEMNO                         		NUMBER(10)		 NOT NULL,
		ITEMNO                        		NUMBER(10)		 NOT NULL,
		QUANTITY                      		NUMBER(10)		 NOT NULL,
  FOREIGN KEY (ITEMNO) REFERENCES ITEM (ITEMNO),
  FOREIGN KEY (MEMNO) REFERENCES MEM (MEMNO)
);

COMMENT ON TABLE SHOPPING_CART is '장바구니';
COMMENT ON COLUMN SHOPPING_CART.SHOPPING_CARTNO is '장바구니no';
COMMENT ON COLUMN SHOPPING_CART.MEMNO is '회원번호';
COMMENT ON COLUMN SHOPPING_CART.ITEMNO is '상품no';
COMMENT ON COLUMN SHOPPING_CART.QUANTITY is '수량';


/**********************************/
/* Table Name: 주문 */
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

COMMENT ON TABLE PORDER is '주문';
COMMENT ON COLUMN PORDER.PORDERNO is '주문no';
COMMENT ON COLUMN PORDER.MEMNO is '회원no';
COMMENT ON COLUMN PORDER.RDATE is '주문날짜';
COMMENT ON COLUMN PORDER.ITEM_PRICE_SUM is '판매가총액';
COMMENT ON COLUMN PORDER.ITEM_DISCOUNT_SUM is '할인총액';
COMMENT ON COLUMN PORDER.COUPON_DISCOUNT_SUM is '쿠폰할인';
COMMENT ON COLUMN PORDER.DELIVERY_FEE is '배송비';
COMMENT ON COLUMN PORDER.PAYMENT_PRICE is '최종결제금액';
COMMENT ON COLUMN PORDER.PORDER_STATUS is '승인 상태';
COMMENT ON COLUMN PORDER.PORDER_ZIP_CODE is '우편번호';
COMMENT ON COLUMN PORDER.PORDER_ADDRESS is '배송지';
COMMENT ON COLUMN PORDER.PORDER_DELIVERY_REQUEST is '배송요청사항';


/**********************************/
/* Table Name: 주문상세 */
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

COMMENT ON TABLE PORDER_DETAIL is '주문상세';
COMMENT ON COLUMN PORDER_DETAIL.PORDER_DETAILNO is '주문상세no';
COMMENT ON COLUMN PORDER_DETAIL.PORDERNO is '주문no';
COMMENT ON COLUMN PORDER_DETAIL.ITEMNO is '상품no';
COMMENT ON COLUMN PORDER_DETAIL.QUANTITY is '수량';
COMMENT ON COLUMN PORDER_DETAIL.ITEM_PRICE_SUM is '판매가총액';
COMMENT ON COLUMN PORDER_DETAIL.ITEM_DISCOUNT_SUM is '할인총액';
COMMENT ON COLUMN PORDER_DETAIL.PAYMENT_PRICE is '최종결제액';
COMMENT ON COLUMN PORDER_DETAIL.PORDER_DETAIL_STATUS is '주문상세승인상태';
COMMENT ON COLUMN PORDER_DETAIL.TRACKINGNO is '운송장번호';


/**********************************/
/* Table Name: 이벤트쿠폰 */
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

COMMENT ON TABLE COUPON is '이벤트쿠폰';
COMMENT ON COLUMN COUPON.COUPONNO is '쿠폰no';
COMMENT ON COLUMN COUPON.CPIMG is '쿠폰이미지';
COMMENT ON COLUMN COUPON.CPUPIMG is '쿠폰업로드파일명이미지';
COMMENT ON COLUMN COUPON.CPTHUMB is '쿠폰이미지썸네일';
COMMENT ON COLUMN COUPON.CPNAME is '쿠폰이름';
COMMENT ON COLUMN COUPON.CPDISCOUNT is '쿠폰할인금액';
COMMENT ON COLUMN COUPON.CPSTOCK is '쿠폰재고';
COMMENT ON COLUMN COUPON.CPCATE is '사용가능카테고리';


/**********************************/
/* Table Name: 쿠폰발급내역 */
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

COMMENT ON TABLE COUPON_ISSUE is '쿠폰발급내역';
COMMENT ON COLUMN COUPON_ISSUE.COUPON_ISSUENO is '쿠폰발급no';
COMMENT ON COLUMN COUPON_ISSUE.MEMNO is '회원no';
COMMENT ON COLUMN COUPON_ISSUE.COUPONNO is '쿠폰no';
COMMENT ON COLUMN COUPON_ISSUE.CPCNT is '쿠폰발급수량';
COMMENT ON COLUMN COUPON_ISSUE.CPISSUE is '쿠폰발급일';
COMMENT ON COLUMN COUPON_ISSUE.CPEXPIRED is '쿠폰만료일';
COMMENT ON COLUMN COUPON_ISSUE.CPSTATUS is '쿠폰상태';


/**********************************/
/* Table Name: 쿠폰 사용 내역 */
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

COMMENT ON TABLE COUPON_USE is '쿠폰 사용 내역';
COMMENT ON COLUMN COUPON_USE.COUPON_USENO is '쿠폰 사용no';
COMMENT ON COLUMN COUPON_USE.PORDERNO is '주문no';
COMMENT ON COLUMN COUPON_USE.COUPON_ISSUENO is '쿠폰발급no';
COMMENT ON COLUMN COUPON_USE.RDATE is '쿠폰 사용일';
COMMENT ON COLUMN COUPON_USE.CPSTATUS is '쿠폰상태';


/**********************************/
/* Table Name: 배송 */
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

COMMENT ON TABLE DELIVERY is '배송';
COMMENT ON COLUMN DELIVERY.TRACKINGNO is '운송장번호';
COMMENT ON COLUMN DELIVERY.PORDER_COMPANY is '배송요청회사';
COMMENT ON COLUMN DELIVERY.PORDERNO is '주문번호';
COMMENT ON COLUMN DELIVERY.PORDER_DETAILNO is '주문상세번호';
COMMENT ON COLUMN DELIVERY.DMAN is '담당자';
COMMENT ON COLUMN DELIVERY.DELIVERY_DATE is '배송상태최종처리일';
COMMENT ON COLUMN DELIVERY.STATUS is '배송상태';


/**********************************/
/* Table Name: 회원 찜목록 */
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

COMMENT ON TABLE MEM_WISH is '회원 찜목록';
COMMENT ON COLUMN MEM_WISH.MEM_WISH_NO is '회원 찜 번호';
COMMENT ON COLUMN MEM_WISH.MEM_WISH_SEQNO is '회원 찜 출력 번호';
COMMENT ON COLUMN MEM_WISH.WORD is '회원 찜 검색어';
COMMENT ON COLUMN MEM_WISH.MEMNO is '회원번호';
COMMENT ON COLUMN MEM_WISH.ITEMNO is '상품 등록 번호';


/**********************************/
/* Table Name: 상품 후기 */
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

COMMENT ON TABLE REVIEW is '상품 후기';
COMMENT ON COLUMN REVIEW.REVIEWNO is '댓글번호';
COMMENT ON COLUMN REVIEW.REVIEW_CONTENT is '리뷰 내용';
COMMENT ON COLUMN REVIEW.REVIEW_RATE is '리뷰 별점';
COMMENT ON COLUMN REVIEW.REVIEW_DATE is '등록일';
COMMENT ON COLUMN REVIEW.MEMNO is '회원번호';
COMMENT ON COLUMN REVIEW.ITEMNO is '상품 등록 번호';
COMMENT ON COLUMN REVIEW.PORDERNO is '주문no';


/**********************************/
/* Table Name: 상품후기 첨부파일 */
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

COMMENT ON TABLE REVIEWPHOTO is '상품후기 첨부파일';
COMMENT ON COLUMN REVIEWPHOTO.REVIEWPHOTONO is '상품사진 번호';
COMMENT ON COLUMN REVIEWPHOTO.FNAME is '원본 파일명';
COMMENT ON COLUMN REVIEWPHOTO.FUPNAME is '업로드 파일명';
COMMENT ON COLUMN REVIEWPHOTO.THUMB is 'Thumb 파일명';
COMMENT ON COLUMN REVIEWPHOTO.FSIZE is '파일 사이즈';
COMMENT ON COLUMN REVIEWPHOTO.RDATE is '등록일';
COMMENT ON COLUMN REVIEWPHOTO.REVIEWNO is '댓글번호';


