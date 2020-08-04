package vga.mvc.memlv;

import java.util.List;

public interface MemlvProcInter {

	/**
	 * 회원 등급 등록
	 * @param memlvVO
	 * @return
	 */
	public int create(MemlvVO memlvVO);
	
	/**
	 * 회원 등급 전체 목록
	 * @return
	 */
	public List<MemlvVO> list();
	
	/**
	 * 회원 등급 한 건만 조회
	 * @param memlvno
	 * @return
	 */
	public MemlvVO read(int memlvno);
	
	/**
	 * 회원 등급 내용 수정
	 * @param memlvVO
	 * @return
	 */
	public int update(MemlvVO memlvVO);
	
	/**
	 * 회원 등급 삭제
	 * @param memlvno
	 * @return
	 */
	public int delete(int memlvno);
	
	/**
	 * 회원 등급 로고 수정
	 * 
	 * @param map
	 * @return
	 */
	public int memlv_img_update(MemlvVO memlvVO);
	
}
