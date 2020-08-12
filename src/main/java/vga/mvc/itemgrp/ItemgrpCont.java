package vga.mvc.itemgrp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemgrpCont {
	@Autowired
	@Qualifier("vga.mvc.itemgrp.ItemgrpProc")
	private ItemgrpProcInter itemgrpProc;

	public ItemgrpCont() {
		System.out.println("-->ItemgrpCont created.");
	}

	// http://localhost:9090/vga_furniture/itemgrp/create.do
	/**
	 * ��� ��
	 * 
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/create.do", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/itemgrp/create");

		return mav; // forward
	}

	// http://localhost:9090/vga_furniture/itemgrp/create.do
	/**
	 * ��� ó��
	 * 
	 * @param itemgrpVO
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/create.do", method = RequestMethod.POST)
	public ModelAndView create(ItemgrpVO itemgrpVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.itemgrpProc.create(itemgrpVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/itemgrp/list.do");

		return mav;
	}

	// http://localhost:9090/vga_furniture/itemgrp/list.do
	/**
	 * ��ü ���
	 * 
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/list.do", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();

		List<ItemgrpVO> list = this.itemgrpProc.list();
		mav.addObject("list", list);

		mav.setViewName("/itemgrp/list");
		return mav;
	}

	/**
	 * ȸ�� ��ȸ
	 * 
	 * @param itemgrpno
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/read.do", method = RequestMethod.GET)
	public ModelAndView read(int itemgrpno) {
		ModelAndView mav = new ModelAndView();

		ItemgrpVO itemgrpVO = this.itemgrpProc.read(itemgrpno);
		mav.addObject("itemgrpVO", itemgrpVO);
		mav.setViewName("/itemgrp/read");

		return mav;
	}

	/**
	 * ������
	 * 
	 * @param itemgrpno ��ȸ�� ī�װ� ��ȣ
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/update.do", method = RequestMethod.GET)
	public ModelAndView update(int itemgrpno) {

		ModelAndView mav = new ModelAndView();

		ItemgrpVO itemgrpVO = this.itemgrpProc.read(itemgrpno);
		mav.addObject("itemgrpVO", itemgrpVO);

		List<ItemgrpVO> list = this.itemgrpProc.list();
		mav.addObject("list", list);

		mav.setViewName("/itemgrp/update");
		return mav;
	}

	/**
	 * ���� ó��
	 * 
	 * @param itemgrpVO
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/update.do", method = RequestMethod.POST)
	public ModelAndView update_proc(ItemgrpVO itemgrpVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.itemgrpProc.update(itemgrpVO);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/itemgrp/list.do");

		return mav;
	}

	/**
	 * ����
	 * 
	 * @param itemgrpno 
	 * @return
	 */
	@RequestMapping(value = "/itemgrp/delete.do", method = RequestMethod.GET)
	public ModelAndView delete_proc(int itemgrpno) {
		ModelAndView mav = new ModelAndView();

		ItemgrpVO itemgrpVO = this.itemgrpProc.read(itemgrpno);
		mav.addObject("itemgrpVO", itemgrpVO);

		int cnt = this.itemgrpProc.delete(itemgrpno);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/itemgrp/list.do");

		return mav;
	}
}
