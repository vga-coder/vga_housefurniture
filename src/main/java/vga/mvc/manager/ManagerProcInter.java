package vga.mvc.manager;

import java.util.HashMap;
import java.util.List;


public interface ManagerProcInter {

	/**
	 * 아이디 중복 체크 
	 * @param id
	 * @return 0: 중복 아님, 1: 중복
	 */
	public int checkID(String manager_id);
	  
	/**
	 * 회원 가입
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
	 * 삭제
	 * @param managerno
	 * @return
	 */
	public int delete(int managerno);

	/**
	 * 회원 조회
	 * @param 
	 * @return
	 */
	public ManagerVO readById(String manager_id);

	/**
	 * 회원 조회
	 * @param 
	 * @return
	 */
	public ManagerVO read(int managerno);
	  
	/**
	 * 로그인
	 * @param map
	 * @return 0: 일치하지 않음, 1: 일치함
	 */
	public int login(HashMap<Object, Object> map);
}
