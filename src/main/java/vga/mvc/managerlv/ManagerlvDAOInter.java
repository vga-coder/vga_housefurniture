package vga.mvc.managerlv;

import java.util.List;

public interface ManagerlvDAOInter {
	
	/**
	 * 관리자 등급 등록
	 * @param managerlvVO
	 * @return
	 */
	public int create(ManagerlvVO managerlvVO);
	
	/**
	 * 관리자 등급 전체 목록
	 * @return
	 */
	public List<ManagerlvVO> list();
	
	/**
	 * 관리자 등급 한 건만 조회
	 * @param managerlvno
	 * @return
	 */
	public ManagerlvVO read(int managerlvno);
	
	/**
	 * 관리자 등급 내용 수정
	 * @param managerlvVO
	 * @return
	 */
	public int update(ManagerlvVO managerlvVO);
	
	/**
	 * 관리자 등급 삭제
	 * @param managerlvno
	 * @return
	 */
	public int delete(int managerlvno);

}
