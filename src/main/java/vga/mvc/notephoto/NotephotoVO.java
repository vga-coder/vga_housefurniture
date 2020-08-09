package vga.mvc.notephoto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/*CREATE TABLE NOTEPHOTO(
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
*/
public class NotephotoVO {
/*��ǰ���� ��ȣ*/
private int notephotono;
/*�������׹�ȣ*/
private int noteno;
/*���� ���ϸ�*/
private String fname;
/*���ε� ���ϸ�*/
private String fupname;
/*Thumb ����*/
private String thumb;
/*���� ������*/
private String fisze;
/*�����*/
private String rdate;
/** Form�� ������ MultipartFile�� ��ȯ�Ͽ� List�� ����  */
private List<MultipartFile> fnamesMF;

// private MultipartFile fnamesMF;  // �ϳ��� ���� ó��
/** ���� ���� ��� */
private String flabel;

public int getNotephotono() {
	return notephotono;
}

public void setNotephotono(int notephotono) {
	this.notephotono = notephotono;
}

public int getNoteno() {
	return noteno;
}

public void setNoteno(int noteno) {
	this.noteno = noteno;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getFupname() {
	return fupname;
}

public void setFupname(String fupname) {
	this.fupname = fupname;
}

public String getThumb() {
	return thumb;
}

public void setThumb(String thumb) {
	this.thumb = thumb;
}

public String getFisze() {
	return fisze;
}

public void setFisze(String fisze) {
	this.fisze = fisze;
}

public String getRdate() {
	return rdate;
}

public void setRdate(String rdate) {
	this.rdate = rdate;
}

public List<MultipartFile> getFnamesMF() {
	return fnamesMF;
}

public void setFnamesMF(List<MultipartFile> fnamesMF) {
	this.fnamesMF = fnamesMF;
}

public String getFlabel() {
	return flabel;
}

public void setFlabel(String flabel) {
	this.flabel = flabel;
}

}
