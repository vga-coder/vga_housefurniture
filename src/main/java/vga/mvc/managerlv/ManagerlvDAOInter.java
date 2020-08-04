package vga.mvc.managerlv;

import java.util.List;

public interface ManagerlvDAOInter {
	
	/**
	 * ������ ��� ���
	 * @param managerlvVO
	 * @return
	 */
	public int create(ManagerlvVO managerlvVO);
	
	/**
	 * ������ ��� ��ü ���
	 * @return
	 */
	public List<ManagerlvVO> list();
	
	/**
	 * ������ ��� �� �Ǹ� ��ȸ
	 * @param managerlvno
	 * @return
	 */
	public ManagerlvVO read(int managerlvno);
	
	/**
	 * ������ ��� ���� ����
	 * @param managerlvVO
	 * @return
	 */
	public int update(ManagerlvVO managerlvVO);
	
	/**
	 * ������ ��� ����
	 * @param managerlvno
	 * @return
	 */
	public int delete(int managerlvno);

}
