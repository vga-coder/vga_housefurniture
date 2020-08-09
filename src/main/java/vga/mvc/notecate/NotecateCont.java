package vga.mvc.notecate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NotecateCont {
	@Autowired
	@Qualifier("vga.mvc.notecate.NotecateProc")
	private NotecateProcInter notecateProc;

	public NotecateCont() {
		System.out.println("-->NotecateCont created.");
	}

	// http://localhost:9090/vga_furniture/notecate/create.do
	/**
	 * ��� ��
	 * 
	 * @return
	 */
	@RequestMapping(value = "/notecate/create.do", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notecate/create");

		return mav; // forward
	}

	// http://localhost:9090/vga_furniture/notecate/create.do
	/**
	 * ��� ó��
	 * 
	 * @param notecateVO
	 * @return
	 */
	@RequestMapping(value = "/notecate/create.do", method = RequestMethod.POST)
	public ModelAndView create(NotecateVO notecateVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.notecateProc.create(notecateVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/notecate/list.do");

		return mav;
	}

	// http://localhost:9090/vga_furniture/notecate/list.do
	/**
	 * ��ü ���
	 * 
	 * @return
	 */
	@RequestMapping(value = "/notecate/list.do", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();

		List<NotecateVO> list = this.notecateProc.list();
		mav.addObject("list", list);

		mav.setViewName("/notecate/list");
		return mav;
	}

	/**
	 * ȸ�� ��ȸ
	 * 
	 * @param notecateno
	 * @return
	 */
	@RequestMapping(value = "/notecate/read.do", method = RequestMethod.GET)
	public ModelAndView read(int notecateno) {
		ModelAndView mav = new ModelAndView();

		NotecateVO notecateVO = this.notecateProc.read(notecateno);
		mav.addObject("notecateVO", notecateVO);
		mav.setViewName("/notecate/read");

		return mav;
	}

	/**
	 * ������
	 * 
	 * @param notecateno ��ȸ�� ī�װ� ��ȣ
	 * @return
	 */
	@RequestMapping(value = "/notecate/update.do", method = RequestMethod.GET)
	public ModelAndView update(int notecateno) {

		ModelAndView mav = new ModelAndView();

		NotecateVO notecateVO = this.notecateProc.read(notecateno);
		mav.addObject("notecateVO", notecateVO);

		List<NotecateVO> list = this.notecateProc.list();
		mav.addObject("list", list);

		mav.setViewName("/notecate/update");
		return mav;
	}

	/**
	 * ���� ó��
	 * 
	 * @param notecateVO
	 * @return
	 */
	@RequestMapping(value = "/notecate/update.do", method = RequestMethod.POST)
	public ModelAndView update_proc(NotecateVO notecateVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.notecateProc.update(notecateVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/notecate/list.do");

		return mav;
	}

	/**
	 * ����
	 * 
	 * @param notecateno 
	 * @return
	 */
	@RequestMapping(value = "/notecate/delete.do", method = RequestMethod.GET)
	public ModelAndView delete_proc(int notecateno) {
		ModelAndView mav = new ModelAndView();

		NotecateVO notecateVO = this.notecateProc.read(notecateno);
		mav.addObject("notecateVO", notecateVO);

		int cnt = this.notecateProc.delete(notecateno);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/notecate/list.do");

		return mav;
	}
}
