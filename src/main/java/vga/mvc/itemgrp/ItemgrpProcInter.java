package vga.mvc.itemgrp;

import java.util.List;

public interface ItemgrpProcInter {
	
	/**
	 * �������� ī�װ� ���
	 * @param memlvVO
	 * @return
	 */
	public int create(ItemgrpVO itemgrpVO);
	
	/**
	 * �������� ī�װ� ��ü ���
	 * @return
	 */
	public List<ItemgrpVO> list();
	
	/**
	 * �������� ī�װ� �� �Ǹ� ��ȸ
	 * @param memlvno
	 * @return
	 */
	public ItemgrpVO read(int itemgrpno);
	
	/**
	 * �������� ī�װ� ���� ����
	 * @param memlvVO
	 * @return
	 */
	public int update(ItemgrpVO itemgrpVO);
	
	/**
	 * �������� ī�װ� ����
	 * @param memlvno
	 * @return
	 */
	public int delete(int itemgrpno);


}
