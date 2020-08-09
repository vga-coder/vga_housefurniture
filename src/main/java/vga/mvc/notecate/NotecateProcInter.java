package vga.mvc.notecate;

import java.util.List;

public interface NotecateProcInter {
	
	/**
	 * �������� ī�װ� ���
	 * @param memlvVO
	 * @return
	 */
	public int create(NotecateVO notecateVO);
	
	/**
	 * �������� ī�װ� ��ü ���
	 * @return
	 */
	public List<NotecateVO> list();
	
	/**
	 * �������� ī�װ� �� �Ǹ� ��ȸ
	 * @param memlvno
	 * @return
	 */
	public NotecateVO read(int notecateno);
	
	/**
	 * �������� ī�װ� ���� ����
	 * @param memlvVO
	 * @return
	 */
	public int update(NotecateVO notecateVO);
	
	/**
	 * �������� ī�װ� ����
	 * @param memlvno
	 * @return
	 */
	public int delete(int notecateno);


}
