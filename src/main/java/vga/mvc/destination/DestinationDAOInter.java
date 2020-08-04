package vga.mvc.destination;

import java.util.List;

public interface DestinationDAOInter {
	
	/**
	 * 배송지 등록
	 * @param destinationVO
	 * @return
	 */
	public int create(DestinationVO destinationVO);
	
	/**
	 * 배송지 전체 목록
	 * @return
	 */
	public List<DestinationVO> list(int memno);
	
	/**
	 * 배송지 한 건만 조회
	 * @param destinationno
	 * @return
	 */
	public DestinationVO read(int destinationno);
	
	/**
	 * 배송지 수정
	 * @param destinationVO
	 * @return
	 */
	public int update(DestinationVO destinationVO);

	/**
	 * 기본배송지 설정
	 * @param destinationVO
	 * @return
	 */
	public int update_basic(DestinationVO destinationVO);
	
	/**
	 * 나머지 기본배송지 해제
	 * @param destinationVO
	 * @return
	 */
	public int update_basic_other(DestinationVO destinationVO);
	
	/**
	 * 배송지 삭제
	 * @param destinationno
	 * @return
	 */
	public int delete(int destinationno);
	  

}
