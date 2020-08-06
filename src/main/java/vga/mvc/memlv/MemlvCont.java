package vga.mvc.memlv;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vga.mvc.tool.Tool;
import vga.mvc.tool.Upload;

@Controller
public class MemlvCont {
	@Autowired
	@Qualifier("dev.mvc.memlv.MemlvProc")
	private MemlvProcInter memlvProc;
	
	public MemlvCont() {
		System.out.println("--> MemlvCont created.");
	}
	
	// http://localhost:9090/team4/memlv/create.do
	/**
	 * 등록 폼
	 * @return
	 */
	@RequestMapping(value="/memlv/create.do", method=RequestMethod.GET )
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/memlv/create"); 

		return mav; // forward
	}

	// http://localhost:9090/team4/memlv/create.do
	/**
	 * 등록 처리
	 * @param mem_lvVO
	 * @return
	 */
	@RequestMapping(value="/memlv/create.do", method=RequestMethod.POST )
	public ModelAndView create(MemlvVO memlvVO) {
		ModelAndView mav = new ModelAndView();

		int cnt = this.memlvProc.create(memlvVO);
		mav.addObject("cnt", cnt); 

		mav.setViewName("redirect:/memlv/list.do");

		return mav;
	}

	// http://localhost:9090/team4/memlv/list.do
	/**
	 * 전체 목록
	 * @return
	 */
	@RequestMapping(value="/memlv/list.do", method=RequestMethod.GET )
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();

		List<MemlvVO> list = this.memlvProc.list();
		mav.addObject("list", list);

		mav.setViewName("/memlv/list"); 
		return mav;
	}

	/**
	 * 회원 조회
	 * @param memlvno
	 * @return
	 */
	@RequestMapping(value="/memlv/read.do", method=RequestMethod.GET)
	public ModelAndView read(int memlvno){
		ModelAndView mav = new ModelAndView();

		MemlvVO memlvVO = this.memlvProc.read(memlvno);
		mav.addObject("memlvVO", memlvVO);
		mav.setViewName("/memlv/read");

		return mav;
	}
	  
	// http://localhost:9090/team4/memlv/update.do
	/**
	 * 수정폼
	 * @param mem_lvno 조회할 카테고리 번호
	 * @return
	 */
	@RequestMapping(value="/memlv/update.do", method=RequestMethod.GET )
	public ModelAndView update(int memlvno) {

		ModelAndView mav = new ModelAndView();

		MemlvVO memlvVO = this.memlvProc.read(memlvno);
		mav.addObject("memlvVO", memlvVO);

		List<MemlvVO> list = this.memlvProc.list();
		mav.addObject("list", list);

		mav.setViewName("/memlv/update"); 
		return mav;
	}

	// http://localhost:9090/team4/memlv/update.do
	/**
	 * 수정 처리
	 * @param mem_lvVO
	 * @return
	 */
	@RequestMapping(value="/memlv/update.do", method=RequestMethod.POST )
	public ModelAndView update_proc(MemlvVO memlvVO) {

		ModelAndView mav = new ModelAndView();

		int cnt = this.memlvProc.update(memlvVO);
		mav.addObject("cnt", cnt); 

		mav.setViewName("redirect:/memlv/list.do"); 

		return mav;
	}



	// http://localhost:9090/team4/mem_lv/delete.do
	/**
	 * 삭제
	 * @param mem_lvno 조회할 카테고리 번호
	 * @return
	 */
	@RequestMapping(value="/memlv/delete.do", method=RequestMethod.GET )
	public ModelAndView delete_proc(int memlvno) {
		ModelAndView mav = new ModelAndView();

		MemlvVO memlvVO = this.memlvProc.read(memlvno);
		mav.addObject("memlvVO", memlvVO);

		int cnt = this.memlvProc.delete(memlvno);
		mav.addObject("cnt", cnt);

		mav.setViewName("redirect:/memlv/list.do");

		return mav;
	}

	  /**
	   * 사진 수정 폼
	   * @return
	   */
	  @RequestMapping(value="/memlv/memlv_img_update.do", method=RequestMethod.GET )
	  public ModelAndView memlv_img_update(int memlvno) {
	    ModelAndView mav = new ModelAndView();
	    
	    MemlvVO memlvVO = this.memlvProc.read(memlvno);
	    mav.addObject("memlvVO", memlvVO);
	    mav.addObject("memlvno", memlvVO.getMemlvno());
	    
	    mav.setViewName("/memlv/memlv_img_update"); 
	    
	    return mav;
	  }
	  
	  // http://localhost:9090/team4/mem/mem_img_update.do
	  /**
	   * 사진 수정 처리
	   * @param cateVO
	   * @return
	   */
	  @RequestMapping(value="/memlv/memlv_img_update.do", 
	                              method=RequestMethod.POST )
	  public ModelAndView create(HttpServletRequest request, MemlvVO memlvVO) {
	    ModelAndView mav = new ModelAndView();
	    // -------------------------------------------------------------------
	    // 파일 전송 코드 시작
	    // -------------------------------------------------------------------
	    String memlv_img = "";     // main image
	        
	    String upDir = Tool.getRealPath(request, "/memlv/img"); // 절대 경로
	    // 전송 파일이 없어서도 fnamesMF 객체가 생성됨.
	    MultipartFile mf = memlvVO.getMemlv_imgMF();

	    memlv_img = Upload.saveFileSpring(mf, upDir); 

	    memlv_img = Tool.preview(upDir, memlv_img, 100, 70); 

	    // -------------------------------------------------------------------
	    // 파일 전송 코드 종료
	    // -------------------------------------------------------------------
	    
	    
	    /*
	  <insert id="create" parameterType="ContentsVO">
	    <!-- 등록후 contentsno return  -->
	    <selectKey keyProperty="contentsno" resultType="int" order="BEFORE">
	      SELECT contents_seq.nextval FROM dual
	    </selectKey>
	    INSERT INTO contents(contentsno, memberno, cateno, title, content, web, ip,
	                                     passwd, word, rdate)
	    VALUES(#{contentsno}, #{memberno}, #{cateno}, #{title}, #{content}, #{web}, #{ip},
	                #{passwd}, #{word}, sysdate)
	  </insert>
	     * */
	    // PK return 됨
	    memlvVO.setMemlv_img(memlv_img);
	    int cnt = this.memlvProc.memlv_img_update(memlvVO);
	    System.out.println("cnt: " + cnt);
	    mav.addObject("cnt", cnt);
	    
	    // ---------------------------------------------------------------------------------------
	    // cnt, contentsno return 
	    // ---------------------------------------------------------------------------------------
	    // Spring <-----> contentsVO <-----> MyBATIS
	    // Spring과 MyBATIS가 ContentsVO를 공유하고 있음.
	    // MyBATIS는 insert후 PK 컬럼인 contentsno변수에 새로 생성된 PK를 할당함.
	    int memlvno = memlvVO.getMemlvno();  // MyBATIS 리턴된 PK
	    //System.out.println("memlvno: " + memlvno);
	    mav.addObject("memlvno", memlvno); // request에 저장
	    // ---------------------------------------------------------------------------------------
	    /*
	     * // mav.setViewName("/contents/create_msg"); //
	     * mav.setViewName("redirect:/contents/list.do"); // spring 재호출
	     * mav.setViewName("redirect:/contents/msg.do"); } else { //
	     * mav.setViewName("/contents/create_msg"); // webapp/contents/create_msg.jsp }
	     */    
	    
	    mav.setViewName("redirect:/memlv/list.do");
	    
	    return mav;
	  }
}
