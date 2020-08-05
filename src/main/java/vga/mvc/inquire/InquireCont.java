package vga.mvc.inquire;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InquireCont {
	@Autowired
	@Qualifier("vga.mvc.inquire.InquireProc")
	private InquireProcInter inquireProc;

	public InquireCont() {
		System.out.println("-->InquireCont created.");
	}

	// http://localhost:9090/vga_furniture/inquirecate/create.do
	/**
	 * 등록 폼
	 * 
	 * @return
	 */
	@RequestMapping(value = "/inquire/create.do", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/inquire/create");

		return mav; // forward
	}

	// http://localhost:9090/vga_furniture/inquire/create.do
	/**
	 * 등록 처리
	 * 
	 * @param inquirecateVO
	 * @return
	 */
	@RequestMapping(value = "/inquire/create.do", method = RequestMethod.POST)
	public ModelAndView create(InquireVO inquireVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.inquireProc.create(inquireVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/inquire/list.do");

		return mav;
	}

	// http://localhost:9090/vga_furniture/inquirecate/list.do
	/**
	 * 전체 목록
	 * 
	 * @return
	 */
	@RequestMapping(value = "/inquire/list.do", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();

		List<InquireVO> list = this.inquireProc.list();
		mav.addObject("list", list);

		mav.setViewName("/inquire/list");
		return mav;
	}

	/**
	 * 회원 조회
	 * 
	 * @param inquirecateno
	 * @return
	 */
	@RequestMapping(value = "/inquire/read.do", method = RequestMethod.GET)
	public ModelAndView read(int inquireno) {
		ModelAndView mav = new ModelAndView();

		InquireVO inquireVO = this.inquireProc.read(inquireno);
		mav.addObject("inquireVO", inquireVO);
		mav.setViewName("/inquire/read");

		return mav;
	}

	/**
	 * 수정폼
	 * 
	 * @param inquirecateno 조회할 카테고리 번호
	 * @return
	 */
	@RequestMapping(value = "/inquire/update.do", method = RequestMethod.GET)
	public ModelAndView update(int inquireno) {

		ModelAndView mav = new ModelAndView();

		InquireVO inquireVO = this.inquireProc.read(inquireno);
		mav.addObject("inquireVO", inquireVO);

		List<InquireVO> list = this.inquireProc.list();
		mav.addObject("list", list);

		mav.setViewName("/inquire/update");
		return mav;
	}

	/**
	 * 수정 처리
	 * 
	 * @param inquirecateVO
	 * @return
	 */
	@RequestMapping(value = "/inquire/update.do", method = RequestMethod.POST)
	public ModelAndView update_proc(InquireVO inquireVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.inquireProc.update(inquireVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/inquire/list.do");

		return mav;
	}

	/**
	 * 삭제
	 * 
	 * @param inquirecateno 
	 * @return
	 */
	@RequestMapping(value = "/inquire/delete.do", method = RequestMethod.GET)
	public ModelAndView delete_proc(int inquireno) {
		ModelAndView mav = new ModelAndView();

		InquireVO inquireVO = this.inquireProc.read(inquireno);
		mav.addObject("inquireVO", inquireVO);

		int cnt = this.inquireProc.delete(inquireno);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/inquire/list.do");

		return mav;
	}
}
