package vga.mvc.inquirecate;

import java.util.List;

public interface InquirecateProcInter {
	
	/**
	 * 문의 카테고리 등록
	 * @param memlvVO
	 * @return
	 */
	public int create(InquirecateVO inquirecateVO);
	
	/**
	 * 문의 카테고리 전체 목록
	 * @return
	 */
	public List<InquirecateVO> list();
	
	/**
	 * 문의 카테고리 한 건만 조회
	 * @param memlvno
	 * @return
	 */
	public InquirecateVO read(int inquirecateno);
	
	/**
	 * 문의 카테고리 내용 수정
	 * @param memlvVO
	 * @return
	 */
	public int update(InquirecateVO inquirecateVO);
	
	/**
	 * 문의 카테고리 삭제
	 * @param memlvno
	 * @return
	 */
	public int delete(int inquirecateno);

}
