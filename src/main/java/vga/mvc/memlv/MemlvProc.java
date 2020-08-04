package vga.mvc.memlv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("dev.mvc.memlv.MemlvProc")
public class MemlvProc implements MemlvProcInter {
	@Autowired
	private MemlvDAOInter memlvDAO;

	@Override
	public int create(MemlvVO memlvVO) {
	  int cnt = this.memlvDAO.create(memlvVO);
	  return cnt;
	}

	@Override
	public List<MemlvVO> list() {
	  List<MemlvVO> list = this.memlvDAO.list();
	  return list;
	}

	@Override
	public MemlvVO read(int memlvno) {
	  MemlvVO memlvVO = this.memlvDAO.read(memlvno);
	  return memlvVO;
	}

	@Override
	public int update(MemlvVO memlvVO) {
	  int cnt = this.memlvDAO.update(memlvVO);
	  return cnt;
	}

	@Override
	public int delete(int memlvno) {
	  int cnt = this.memlvDAO.delete(memlvno);
	  return cnt;
	}

	@Override
	public int memlv_img_update(MemlvVO memlvVO) {
	  int cnt = this.memlvDAO.memlv_img_update(memlvVO);
	  return cnt;
	}

}
