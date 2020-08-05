package vga.mvc.inquirecate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InquirecateCont {
	@Autowired
	@Qualifier("vga.mvc.inquirecate.InquirecateProc")
	private InquirecateProcInter inquirecateProc;

	public InquirecateCont() {
		System.out.println("-->InquirecateCont created.");
	}

	// http://localhost:9090/vga_furniture/inquirecate/create.do
	/**
	 * ��� ��
	 * 
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/create.do", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/inquirecate/create");

		return mav; // forward
	}

	// http://localhost:9090/vga_furniture/inquirecate/create.do
	/**
	 * ��� ó��
	 * 
	 * @param inquirecateVO
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/create.do", method = RequestMethod.POST)
	public ModelAndView create(InquirecateVO inquirecateVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.inquirecateProc.create(inquirecateVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/inquirecate/list.do");

		return mav;
	}

	// http://localhost:9090/vga_furniture/inquirecate/list.do
	/**
	 * ��ü ���
	 * 
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/list.do", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();

		List<InquirecateVO> list = this.inquirecateProc.list();
		mav.addObject("list", list);

		mav.setViewName("/inquirecate/list");
		return mav;
	}

	/**
	 * ȸ�� ��ȸ
	 * 
	 * @param inquirecateno
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/read.do", method = RequestMethod.GET)
	public ModelAndView read(int inquirecateno) {
		ModelAndView mav = new ModelAndView();

		InquirecateVO inquirecateVO = this.inquirecateProc.read(inquirecateno);
		mav.addObject("inquirecateVO", inquirecateVO);
		mav.setViewName("/inquirecate/read");

		return mav;
	}

	/**
	 * ������
	 * 
	 * @param inquirecateno ��ȸ�� ī�װ� ��ȣ
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/update.do", method = RequestMethod.GET)
	public ModelAndView update(int inquirecateno) {

		ModelAndView mav = new ModelAndView();

		InquirecateVO inquirecateVO = this.inquirecateProc.read(inquirecateno);
		mav.addObject("inquirecateVO", inquirecateVO);

		List<InquirecateVO> list = this.inquirecateProc.list();
		mav.addObject("list", list);

		mav.setViewName("/inquirecate/update");
		return mav;
	}

	/**
	 * ���� ó��
	 * 
	 * @param inquirecateVO
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/update.do", method = RequestMethod.POST)
	public ModelAndView update_proc(InquirecateVO inquirecateVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.inquirecateProc.update(inquirecateVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/inquirecate/list.do");

		return mav;
	}

	/**
	 * ����
	 * 
	 * @param inquirecateno 
	 * @return
	 */
	@RequestMapping(value = "/inquirecate/delete.do", method = RequestMethod.GET)
	public ModelAndView delete_proc(int inquirecateno) {
		ModelAndView mav = new ModelAndView();

		InquirecateVO inquirecateVO = this.inquirecateProc.read(inquirecateno);
		mav.addObject("inquirecateVO", inquirecateVO);

		int cnt = this.inquirecateProc.delete(inquirecateno);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/inquirecate/list.do");

		return mav;
	}
}
