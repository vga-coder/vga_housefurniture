package vga.mvc.manager;

import java.util.HashMap;
import java.util.List;


public interface ManagerProcInter {

	/**
	 * ���̵� �ߺ� üũ 
	 * @param id
	 * @return 0: �ߺ� �ƴ�, 1: �ߺ�
	 */
	public int checkID(String manager_id);
	  
	/**
	 * ȸ�� ����
	 * @param managerVO
	 * @return
	 */
	public int create(ManagerVO managerVO);
	
	/**
	 * 
	 * @return
	 */
	public List<ManagerVO> list();
	
	/**
	 * ����
	 * @param managerno
	 * @return
	 */
	public int delete(int managerno);

	/**
	 * ȸ�� ��ȸ
	 * @param 
	 * @return
	 */
	public ManagerVO readById(String manager_id);

	/**
	 * ȸ�� ��ȸ
	 * @param 
	 * @return
	 */
	public ManagerVO read(int managerno);
	  
	/**
	 * �α���
	 * @param map
	 * @return 0: ��ġ���� ����, 1: ��ġ��
	 */
	public int login(HashMap<Object, Object> map);
}
