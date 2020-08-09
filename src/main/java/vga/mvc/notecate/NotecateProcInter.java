package vga.mvc.notecate;

import java.util.List;

public interface NotecateProcInter {
	
	/**
	 * 공지사항 카테고리 등록
	 * @param memlvVO
	 * @return
	 */
	public int create(NotecateVO notecateVO);
	
	/**
	 * 공지사항 카테고리 전체 목록
	 * @return
	 */
	public List<NotecateVO> list();
	
	/**
	 * 공지사항 카테고리 한 건만 조회
	 * @param memlvno
	 * @return
	 */
	public NotecateVO read(int notecateno);
	
	/**
	 * 공지사항 카테고리 내용 수정
	 * @param memlvVO
	 * @return
	 */
	public int update(NotecateVO notecateVO);
	
	/**
	 * 공지사항 카테고리 삭제
	 * @param memlvno
	 * @return
	 */
	public int delete(int notecateno);


}
