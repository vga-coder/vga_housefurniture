package vga.mvc.destination;

import java.util.List;

public interface DestinationDAOInter {
	
	/**
	 * ����� ���
	 * @param destinationVO
	 * @return
	 */
	public int create(DestinationVO destinationVO);
	
	/**
	 * ����� ��ü ���
	 * @return
	 */
	public List<DestinationVO> list(int memno);
	
	/**
	 * ����� �� �Ǹ� ��ȸ
	 * @param destinationno
	 * @return
	 */
	public DestinationVO read(int destinationno);
	
	/**
	 * ����� ����
	 * @param destinationVO
	 * @return
	 */
	public int update(DestinationVO destinationVO);

	/**
	 * �⺻����� ����
	 * @param destinationVO
	 * @return
	 */
	public int update_basic(DestinationVO destinationVO);
	
	/**
	 * ������ �⺻����� ����
	 * @param destinationVO
	 * @return
	 */
	public int update_basic_other(DestinationVO destinationVO);
	
	/**
	 * ����� ����
	 * @param destinationno
	 * @return
	 */
	public int delete(int destinationno);
	  

}
