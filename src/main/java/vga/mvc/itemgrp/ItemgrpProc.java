package vga.mvc.itemgrp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("vga.mvc.itemgrp.ItemgrpProc")
public class ItemgrpProc implements ItemgrpProcInter {
	@Autowired
	private ItemgrpDAOInter itemgrpDAO;

	@Override
	public int create(ItemgrpVO itemgrpVO) {
		 int cnt = this.itemgrpDAO.create(itemgrpVO);
		 return cnt;
	}

	@Override
	public List<ItemgrpVO> list() {
		 List<ItemgrpVO> list = this.itemgrpDAO.list();
		 return list;
	}

	@Override
	public ItemgrpVO read(int itemgrpno) {
		ItemgrpVO itemgrpVO = this.itemgrpDAO.read(itemgrpno);
		return itemgrpVO;
	}

	@Override
	public int update(ItemgrpVO itemgrpVO) {
		 int cnt = this.itemgrpDAO.update(itemgrpVO);
		 return cnt;
	}

	@Override
	public int delete(int itemgrpno) {
		 int cnt = this.itemgrpDAO.delete(itemgrpno);
		 return cnt;
	}


}
