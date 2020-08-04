package vga.mvc.manager;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("dev.mvc.manager.ManagerProc")
public class ManagerProc implements ManagerProcInter {
	@Autowired
	private ManagerDAOInter managerDAO;

	@Override
	public int checkID(String manager_id) {
		int cnt = this.managerDAO.checkID(manager_id);
		return cnt;
	}

	@Override
	public int create(ManagerVO managerVO) {
		int cnt = this.managerDAO.create(managerVO);
		return cnt;
	}

	@Override
	public List<ManagerVO> list() {
		List<ManagerVO> list = this.managerDAO.list();
		return list;
	}

	@Override
	public int delete(int managerno) {
		int cnt = this.managerDAO.delete(managerno);
		return cnt;
	}

	@Override
	public ManagerVO readById(String manager_id) {
		ManagerVO managerVO = this.managerDAO.readById(manager_id);
		return managerVO;
	}
	
	@Override
	public ManagerVO read(int managerno) {
		ManagerVO managerVO = this.managerDAO.read(managerno);
		return managerVO;
	}

	@Override
	public int login(HashMap<Object, Object> map) {
		int cnt = this.managerDAO.login(map);
		return cnt;
	}

}
