package vga.mvc.destination;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DestinationCont {
	@Autowired
	@Qualifier("dev.mvc.destination.DestinationProc")
	private DestinationProcInter destinationProc;
	
	public DestinationCont() {
		System.out.println("--> destinationCont created.");
	}
	
	// http://localhost:9090/team4/destination/create.do
	/**
	 * ��� ��
	 * @return
	 */
	@RequestMapping(value="/destination/create.do", method=RequestMethod.GET )
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/destination/create"); 

		return mav; // forward
	}

	// http://localhost:9090/team4/destination/create.do
	/**
	 * ��� ó��
	 * @param destinationVO
	 * @return
	 */
	@RequestMapping(value="/destination/create.do", method=RequestMethod.POST )
	public ModelAndView create(DestinationVO destinationVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.destinationProc.create(destinationVO);
		mav.addObject("cnt", cnt);
		mav.addObject("memno", destinationVO.getMemno());

		mav.setViewName("redirect:/destination/list.do");

		return mav;
	}

	// http://localhost:9090/team4/destination/list.do
	/**
	 * ��ü ���
	 * @return
	 */
	@RequestMapping(value="/destination/list.do", method=RequestMethod.GET )
	public ModelAndView list(int memno) {
		ModelAndView mav = new ModelAndView();

		List<DestinationVO> list = this.destinationProc.list(memno);
		mav.addObject("list", list);

		mav.setViewName("/destination/list"); 
		return mav;
	}

	/**
	 * ȸ�� ��ȸ
	 * @param destinationno
	 * @return
	 */
	@RequestMapping(value="/destination/read.do", method=RequestMethod.GET)
	public ModelAndView read(int destinationno){
		ModelAndView mav = new ModelAndView();

		DestinationVO destinationVO = this.destinationProc.read(destinationno);
		mav.addObject("DestinationVO", destinationVO);
		mav.setViewName("/destination/read");

		return mav;
	}
	  
	// http://localhost:9090/team4/destination/update.do
	/**
	 * ������
	 * @param destinationno ��ȸ�� ī�װ� ��ȣ
	 * @return
	 */
	@RequestMapping(value="/destination/update.do", method=RequestMethod.GET )
	public ModelAndView update(int destinationno) {

		ModelAndView mav = new ModelAndView();

		DestinationVO destinationVO = this.destinationProc.read(destinationno);
		mav.addObject("destinationVO", destinationVO);

		List<DestinationVO> list = this.destinationProc.list(destinationVO.getMemno());
		mav.addObject("list", list);

		mav.setViewName("/destination/update"); 
		return mav;
	}

	// http://localhost:9090/team4/destination/update.do
	/**
	 * ���� ó��
	 * @param destinationVO
	 * @return
	 */
	@RequestMapping(value="/destination/update.do", method=RequestMethod.POST )
	public ModelAndView update_proc(DestinationVO destinationVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.destinationProc.update(destinationVO);
		mav.addObject("cnt", cnt);
		mav.addObject("memno", destinationVO.getMemno());

		mav.setViewName("redirect:/destination/list.do"); 

		return mav;
	}

	// http://localhost:9090/team4/destination/delete.do
	/**
	 * ����
	 * @param destinationno ��ȸ�� ī�װ� ��ȣ
	 * @return
	 */
	@RequestMapping(value="/destination/delete.do", method=RequestMethod.GET )
	public ModelAndView delete_proc(int destinationno) {
		ModelAndView mav = new ModelAndView();

		DestinationVO destinationVO = this.destinationProc.read(destinationno);
		mav.addObject("destinationVO", destinationVO);

		int cnt = this.destinationProc.delete(destinationno);
		mav.addObject("cnt", cnt);
		mav.addObject("memno", destinationVO.getMemno());
		
		mav.setViewName("redirect:/destination/list.do");

		return mav;
	}
	
	// http://localhost:9090/team4/destination/update_basic.do
	/**
	 * �⺻�����
	 * @param destinationno
	 * @return
	 */
	@RequestMapping(value="/destination/update_basic.do", method=RequestMethod.GET )
	public ModelAndView update_basic(DestinationVO destinationVO) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("destinationVO", destinationVO);
		
		int cnt = this.destinationProc.update_basic(destinationVO);
		int cnt2 = this.destinationProc.update_basic_other(destinationVO);
		mav.addObject("cnt", cnt);
		mav.addObject("cnt2", cnt2);
		mav.addObject("memno", destinationVO.getMemno());
		
		mav.setViewName("redirect:/destination/list.do");
		
		return mav;
	}


}
