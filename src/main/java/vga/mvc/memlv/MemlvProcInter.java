package vga.mvc.memlv;

import java.util.List;

public interface MemlvProcInter {

	/**
	 * ȸ�� ��� ���
	 * @param memlvVO
	 * @return
	 */
	public int create(MemlvVO memlvVO);
	
	/**
	 * ȸ�� ��� ��ü ���
	 * @return
	 */
	public List<MemlvVO> list();
	
	/**
	 * ȸ�� ��� �� �Ǹ� ��ȸ
	 * @param memlvno
	 * @return
	 */
	public MemlvVO read(int memlvno);
	
	/**
	 * ȸ�� ��� ���� ����
	 * @param memlvVO
	 * @return
	 */
	public int update(MemlvVO memlvVO);
	
	/**
	 * ȸ�� ��� ����
	 * @param memlvno
	 * @return
	 */
	public int delete(int memlvno);
	
	/**
	 * ȸ�� ��� �ΰ� ����
	 * 
	 * @param map
	 * @return
	 */
	public int memlv_img_update(MemlvVO memlvVO);
	
}
