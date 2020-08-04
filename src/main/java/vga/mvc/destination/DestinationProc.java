package vga.mvc.destination;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("dev.mvc.destination.DestinationProc")
public class DestinationProc implements DestinationProcInter {
	@Autowired
	private DestinationDAOInter destinationDAO;

	@Override
	public int create(DestinationVO destinationVO) {
		int cnt = this.destinationDAO.create(destinationVO);
		return cnt;
	}

	@Override
	public List<DestinationVO> list(int memno) {
		List<DestinationVO> list = this.destinationDAO.list(memno);
		return list;
	}

	@Override
	public DestinationVO read(int destinationno) {
		DestinationVO destinationVO = this.destinationDAO.read(destinationno);
		return destinationVO;
	}

	@Override
	public int update(DestinationVO destinationVO) {
		int cnt = this.destinationDAO.update(destinationVO);
		return cnt;
	}

	@Override
	public int delete(int destinationno) {
		int cnt = this.destinationDAO.delete(destinationno);
		return cnt;
	}

	@Override
	public int update_basic(DestinationVO destinationVO) {
		int cnt = this.destinationDAO.update_basic(destinationVO);
		return cnt;
	}

	@Override
	public int update_basic_other(DestinationVO destinationVO) {
		int cnt = this.destinationDAO.update_basic_other(destinationVO);
		return cnt;
	}

}
