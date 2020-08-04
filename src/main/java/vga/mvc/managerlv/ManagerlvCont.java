package vga.mvc.managerlv;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManagerlvCont {
	@Autowired
	@Qualifier("dev.mvc.managerlv.ManagerlvProc")
	private ManagerlvProcInter managerlvProc;
	
	public ManagerlvCont() {
		System.out.println("--> ManagerlvCont created.");
	}

	// http://localhost:9090/team4/managerlv/create.do
	/**
	 * 등록 폼
	 * @return
	 */
	@RequestMapping(value="/managerlv/create.do", method=RequestMethod.GET )
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/managerlv/create"); 

		return mav; // forward
	}

	// http://localhost:9090/team4/managerlv/create.do
	/**
	 * 등록 처리
	 * @param mem_lvVO
	 * @return
	 */
	@RequestMapping(value="/managerlv/create.do", method=RequestMethod.POST )
	public ModelAndView create(ManagerlvVO managerlvVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.managerlvProc.create(managerlvVO);
		mav.addObject("cnt", cnt); 

		mav.setViewName("redirect:/managerlv/list.do");

		return mav;
	}

	// http://localhost:9090/team4/managerlv/list.do
	/**
	 * 전체 목록
	 * @return
	 */
	@RequestMapping(value="/managerlv/list.do", method=RequestMethod.GET )
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();

		List<ManagerlvVO> list = this.managerlvProc.list();
		mav.addObject("list", list);

		mav.setViewName("/managerlv/list"); 
		return mav;
	}

	/**
	 * 회원 조회
	 * @param memlvno
	 * @return
	 */
	@RequestMapping(value="/managerlv/read.do", method=RequestMethod.GET)
	public ModelAndView read(int managerlvno){
		ModelAndView mav = new ModelAndView();

		ManagerlvVO managerlvVO = this.managerlvProc.read(managerlvno);
		mav.addObject("managerlvVO", managerlvVO);
		mav.setViewName("/managerlv/read");

		return mav;
	}
	  
	// http://localhost:9090/team4/managerlv/update.do
	/**
	 * 수정폼
	 * @param mem_lvno 조회할 카테고리 번호
	 * @return
	 */
	@RequestMapping(value="/managerlv/update.do", method=RequestMethod.GET )
	public ModelAndView update(int managerlvno) {

		ModelAndView mav = new ModelAndView();

		ManagerlvVO managerlvVO = this.managerlvProc.read(managerlvno);
		mav.addObject("managerlvVO", managerlvVO);

		List<ManagerlvVO> list = this.managerlvProc.list();
		mav.addObject("list", list);

		mav.setViewName("/managerlv/update"); 
		return mav;
	}

	// http://localhost:9090/team4/managerlv/update.do
	/**
	 * 수정 처리
	 * @param mem_lvVO
	 * @return
	 */
	@RequestMapping(value="/managerlv/update.do", method=RequestMethod.POST )
	public ModelAndView update_proc(ManagerlvVO managerlvVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.managerlvProc.update(managerlvVO);
		mav.addObject("cnt", cnt); 

		mav.setViewName("redirect:/managerlv/list.do"); 

		return mav;
	}



	// http://localhost:9090/team4/managerlv/delete.do
	/**
	 * 삭제
	 * @param mem_lvno 조회할 카테고리 번호
	 * @return
	 */
	@RequestMapping(value="/managerlv/delete.do", method=RequestMethod.GET )
	public ModelAndView delete_proc(int managerlvno) {
		ModelAndView mav = new ModelAndView();

		ManagerlvVO managerlvVO = this.managerlvProc.read(managerlvno);
		mav.addObject("managerlvVO", managerlvVO);

		int cnt = this.managerlvProc.delete(managerlvno);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/managerlv/list.do");

		return mav;
	}
}
