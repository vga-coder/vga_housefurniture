package vga.mvc.inquirecate;

import java.util.List;

public interface InquirecateProcInter {
	
	/**
	 * ���� ī�װ� ���
	 * @param memlvVO
	 * @return
	 */
	public int create(InquirecateVO inquirecateVO);
	
	/**
	 * ���� ī�װ� ��ü ���
	 * @return
	 */
	public List<InquirecateVO> list();
	
	/**
	 * ���� ī�װ� �� �Ǹ� ��ȸ
	 * @param memlvno
	 * @return
	 */
	public InquirecateVO read(int inquirecateno);
	
	/**
	 * ���� ī�װ� ���� ����
	 * @param memlvVO
	 * @return
	 */
	public int update(InquirecateVO inquirecateVO);
	
	/**
	 * ���� ī�װ� ����
	 * @param memlvno
	 * @return
	 */
	public int delete(int inquirecateno);

}
