package vga.mvc.destination;

/*CREATE TABLE destination(
	      destinationno                       NUMBER(10)       NOT NULL       PRIMARY KEY,
	      recipient                           VARCHAR2(20)       NOT NULL,
	      postcode                            NUMBER(10)       NOT NULL,
	      address1                            VARCHAR2(80)       NOT NULL,
	      address2                            VARCHAR2(80)       NOT NULL,
	      memno                               NUMBER(10)       NOT NULL,
	  FOREIGN KEY (memno) REFERENCES mem (memno)
	);
*/
public class DestinationVO {
/** 배송지번호*/
private int destinationno;
/** 배송받는사람*/
private String recipient;
/** 배송받는사람 번호*/
private int recipient_phone;
/** 우편번호*/
private int postcode;
/** 주소1*/
private String address1;
/** 주소2*/
private String address2;
/** 기본배송지*/
private String basic;
/** 회원번호*/
private int memno;
public int getDestinationno() {
	return destinationno;
}
public void setDestinationno(int destinationno) {
	this.destinationno = destinationno;
}
public String getRecipient() {
	return recipient;
}
public void setRecipient(String recipient) {
	this.recipient = recipient;
}
public int getRecipient_phone() {
	return recipient_phone;
}
public void setRecipient_phone(int recipient_phone) {
	this.recipient_phone = recipient_phone;
}
public int getPostcode() {
	return postcode;
}
public void setPostcode(int postcode) {
	this.postcode = postcode;
}
public String getAddress1() {
	return address1;
}
public void setAddress1(String address1) {
	this.address1 = address1;
}
public String getAddress2() {
	return address2;
}
public void setAddress2(String address2) {
	this.address2 = address2;
}
public String getBasic() {
	return basic;
}
public void setBasic(String basic) {
	this.basic = basic;
}
public int getMemno() {
	return memno;
}
public void setMemno(int memno) {
	this.memno = memno;
}


}
