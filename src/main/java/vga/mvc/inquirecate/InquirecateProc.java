package vga.mvc.inquirecate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("vga.mvc.inquirecate.InquirecateProc")
public class InquirecateProc implements InquirecateProcInter {
	@Autowired
	private InquirecateDAOInter inquirecateDAO;

	@Override
	public int create(InquirecateVO inquirecateVO) {
		 int cnt = this.inquirecateDAO.create(inquirecateVO);
		 return cnt;
	}

	@Override
	public List<InquirecateVO> list() {
		 List<InquirecateVO> list = this.inquirecateDAO.list();
		 return list;
	}

	@Override
	public InquirecateVO read(int inquirecateno) {
		InquirecateVO inquirecateVO = this.inquirecateDAO.read(inquirecateno);
		return inquirecateVO;
	}

	@Override
	public int update(InquirecateVO inquirecateVO) {
		 int cnt = this.inquirecateDAO.update(inquirecateVO);
		 return cnt;
	}

	@Override
	public int delete(int inquirecateno) {
		 int cnt = this.inquirecateDAO.delete(inquirecateno);
		 return cnt;
	}


}
