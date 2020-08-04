package vga.mvc.managerlv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("dev.mvc.managerlv.ManagerlvProc")
public class ManagerlvProc implements ManagerlvProcInter {
	@Autowired
	private ManagerlvDAOInter managerlvDAO;

	@Override
	public int create(ManagerlvVO managerlvVO) {
		int cnt = this.managerlvDAO.create(managerlvVO);
		return cnt;
	}

	@Override
	public List<ManagerlvVO> list() {
		List<ManagerlvVO> list = this.managerlvDAO.list();
		return list;
	}

	@Override
	public ManagerlvVO read(int managerlvno) {
		ManagerlvVO managerlvVO = this.managerlvDAO.read(managerlvno);
		return managerlvVO;
	}

	@Override
	public int update(ManagerlvVO managerlvVO) {
		int cnt = this.managerlvDAO.update(managerlvVO);
		return cnt;
	}

	@Override
	public int delete(int managerlvno) {
		int cnt = this.managerlvDAO.delete(managerlvno);
		return cnt;
	}

}
