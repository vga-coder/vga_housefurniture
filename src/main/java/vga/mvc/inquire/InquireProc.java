package vga.mvc.inquire;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("vga.mvc.inquire.InquireProc")
public class InquireProc implements InquireProcInter {
	@Autowired
	private InquireDAOInter inquireDAO;

	@Override
	public int create(InquireVO inquireVO) {
		 int cnt = this.inquireDAO.create(inquireVO);
		 return cnt;
	}

	@Override
	public List<InquireVO> list() {
		 List<InquireVO> list = this.inquireDAO.list();
		 return list;
	}

	@Override
	public InquireVO read(int inquireno) {
		InquireVO inquireVO = this.inquireDAO.read(inquireno);
		return inquireVO;
	}

	@Override
	public int update(InquireVO inquireVO) {
		 int cnt = this.inquireDAO.update(inquireVO);
		 return cnt;
	}

	@Override
	public int delete(int inquireno) {
		 int cnt = this.inquireDAO.delete(inquireno);
		 return cnt;
	}


}
