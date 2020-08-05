package vga.mvc.inquire;

import java.util.List;


public interface InquireDAOInter {
	
	/**
	 * 문의 카테고리 등록
	 * @param memlvVO
	 * @return
	 */
	public int create(InquireVO inquireVO);
	
	/**
	 * 문의 카테고리 전체 목록
	 * @return
	 */
	public List<InquireVO> list();
	
	/**
	 * 문의 카테고리 한 건만 조회
	 * @param memlvno
	 * @return
	 */
	public InquireVO read(int inquireno);
	
	/**
	 * 문의 카테고리 내용 수정
	 * @param memlvVO
	 * @return
	 */
	public int update(InquireVO inquireVO);
	
	/**
	 * 문의 카테고리 삭제
	 * @param memlvno
	 * @return
	 */
	public int delete(int inquireno);

}
