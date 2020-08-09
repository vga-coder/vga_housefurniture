package vga.mvc.notecate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("vga.mvc.notecate.NotecateProc")
public class NotecateProc implements NotecateProcInter {
	@Autowired
	private NotecateDAOInter notecateDAO;

	@Override
	public int create(NotecateVO notecateVO) {
		 int cnt = this.notecateDAO.create(notecateVO);
		 return cnt;
	}

	@Override
	public List<NotecateVO> list() {
		 List<NotecateVO> list = this.notecateDAO.list();
		 return list;
	}

	@Override
	public NotecateVO read(int notecateno) {
		NotecateVO inquirecateVO = this.notecateDAO.read(notecateno);
		return inquirecateVO;
	}

	@Override
	public int update(NotecateVO notecateVO) {
		 int cnt = this.notecateDAO.update(notecateVO);
		 return cnt;
	}

	@Override
	public int delete(int notecateno) {
		 int cnt = this.notecateDAO.delete(notecateno);
		 return cnt;
	}


}
