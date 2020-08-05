package vga.mvc.inquire;

import java.util.List;


public interface InquireDAOInter {
	
	/**
	 * ���� ī�װ� ���
	 * @param memlvVO
	 * @return
	 */
	public int create(InquireVO inquireVO);
	
	/**
	 * ���� ī�װ� ��ü ���
	 * @return
	 */
	public List<InquireVO> list();
	
	/**
	 * ���� ī�װ� �� �Ǹ� ��ȸ
	 * @param memlvno
	 * @return
	 */
	public InquireVO read(int inquireno);
	
	/**
	 * ���� ī�װ� ���� ����
	 * @param memlvVO
	 * @return
	 */
	public int update(InquireVO inquireVO);
	
	/**
	 * ���� ī�װ� ����
	 * @param memlvno
	 * @return
	 */
	public int delete(int inquireno);

}
