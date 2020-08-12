package vga.mvc.itemgrp;

import java.util.List;

public interface ItemgrpProcInter {
	
	/**
	 * 공지사항 카테고리 등록
	 * @param memlvVO
	 * @return
	 */
	public int create(ItemgrpVO itemgrpVO);
	
	/**
	 * 공지사항 카테고리 전체 목록
	 * @return
	 */
	public List<ItemgrpVO> list();
	
	/**
	 * 공지사항 카테고리 한 건만 조회
	 * @param memlvno
	 * @return
	 */
	public ItemgrpVO read(int itemgrpno);
	
	/**
	 * 공지사항 카테고리 내용 수정
	 * @param memlvVO
	 * @return
	 */
	public int update(ItemgrpVO itemgrpVO);
	
	/**
	 * 공지사항 카테고리 삭제
	 * @param memlvno
	 * @return
	 */
	public int delete(int itemgrpno);


}
