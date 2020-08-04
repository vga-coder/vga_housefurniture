package vga.mvc.manager;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManagerCont {
	@Autowired
	@Qualifier("dev.mvc.manager.ManagerProc")
	private ManagerProcInter managerProc;
	
	public ManagerCont() {
		System.out.println("-->ManagerCont created.");
	}

	  /**
	   * �޽���
	   * @param managerno
	   * @return
	   */
	  @RequestMapping(value="/manager/msg.do", method=RequestMethod.GET)
	  public ModelAndView delete_msg(String url){
	    ModelAndView mav = new ModelAndView();
	    
	    mav.setViewName("/mem/" + url); // forward
	    
	    return mav; 
	  }
	  
	  // http://localhost:9090/team4/manager/create.do
	  /**
	   * ��� ��
	   * @return
	   */
	  @RequestMapping(value="/manager/create.do", method=RequestMethod.GET )
	  public ModelAndView create() {
	    ModelAndView mav = new ModelAndView();
	    mav.setViewName("/manager/create"); 
	    
	    return mav;
	  }
	  
	  // http://localhost:9090/team4/manager/checkID.do?id=user1
	  /**
	   * ID �ߺ� üũ, JSON ���
	   * @return
	   */
	  @ResponseBody
	  @RequestMapping(value="/manager/checkID.do", method=RequestMethod.GET ,
	                              produces = "text/plain;charset=UTF-8" )
	  public String checkID(String manager_id) {
	    int cnt = this.managerProc.checkID(manager_id);
	    
	    JSONObject json = new JSONObject();
	    json.put("cnt", cnt);
	    
	    return json.toString(); 
	  }
	  
	  /**
	   * ��� ó��
	   * @param managerVO
	   * @return
	   */
	  @RequestMapping(value="/manager/create.do", method=RequestMethod.POST)
	  public ModelAndView create(ManagerVO managerVO){
	    ModelAndView mav = new ModelAndView();
	   	    
	    int cnt= managerProc.create(managerVO);
	    mav.addObject("cnt", cnt); // redirect parameter ����
	    mav.addObject("url", "create_msg"); // create_msg.jsp, redirect parameter ����
	    
	    mav.setViewName("redirect:/manager/msg.do");
	    
	    return mav;
	  }
	  
	  // http://localhost:9090/team4/manager/list.do
	  /**
	   * ��ü ���
	   * @return
	   */
	  @RequestMapping(value="/manager/list.do", method=RequestMethod.GET )
	  public ModelAndView list() {
	    ModelAndView mav = new ModelAndView();
	    
	    List<ManagerVO> list = this.managerProc.list();
	    mav.addObject("list", list);
	    
	    mav.setViewName("/manager/list"); 
	    return mav;
	  }
	  
	  // http://localhost:9090/teat4/manager/delete.do
	  /**
	   * ���� ��
	   * @param managerVO
	   * @return
	   */
	  @RequestMapping(value="/manager/delete.do", method=RequestMethod.GET )
	  public ModelAndView delete(int managerno) {
		  ModelAndView mav = new ModelAndView();
		    
		  ManagerVO managerVO = this.managerProc.read(managerno);
 	      mav.addObject("managerVO", managerVO);  // request ��ü�� ����

 	      List<ManagerVO> list = this.managerProc.list();
 	      mav.addObject("list", list);

		  mav.setViewName("/manager/drop"); 
		  
		  return mav;
	  }
	  
	  // http://localhost:9090/teat4/manager/delete.do
	  /**
	   * ���� ó��
	   * @param managerVO
	   * @return
	   */
	  @RequestMapping(value="/manager/delete.do", method=RequestMethod.POST )
	  public ModelAndView delete_proc(int managerno) {
	    ModelAndView mav = new ModelAndView();
	    
	    int cnt = this.managerProc.delete(managerno);
	    mav.addObject("cnt", cnt);

      mav.setViewName("redirect:/index.jsp"); 
	    
	    return mav;
	  }
	  
	  /**
	   * �α��� ��
	   * @param managerno
	   * @return
	   */
	  @RequestMapping(value="/manager/login.do", method=RequestMethod.GET)
	  public ModelAndView login(HttpServletRequest request){
	    ModelAndView mav = new ModelAndView();
	    
	    Cookie[] cookies = request.getCookies();
	    Cookie cookie = null;

	    String ck_id = ""; // id ����
	    String ck_id_save = ""; // id ���� ���θ� üũ
	    String ck_passwd = ""; // passwd ����
	    String ck_passwd_save = ""; // passwd ���� ���θ� üũ

	    if (cookies != null) {
	      for (int i=0; i < cookies.length; i++){
	        cookie = cookies[i]; // ��Ű ��ü ����
	        
	        if (cookie.getName().equals("ck_id")){
	          ck_id = cookie.getValue(); 
	        }else if(cookie.getName().equals("ck_id_save")){
	          ck_id_save = cookie.getValue();  // Y, N
	        }else if (cookie.getName().equals("ck_passwd")){
	          ck_passwd = cookie.getValue();         // 1234
	        }else if(cookie.getName().equals("ck_passwd_save")){
	          ck_passwd_save = cookie.getValue();  // Y, N
	        }
	      }
	    }
	    
	    mav.addObject("ck_id", ck_id); 
	    mav.addObject("ck_id_save", ck_id_save);
	    mav.addObject("ck_passwd", ck_passwd);
	    mav.addObject("ck_passwd_save", ck_passwd_save);
	    
	    mav.setViewName("/manager/login");
	    
	    return mav;
	  }
	  

	  /**
	   * �α��� ó��
	   * @param manager_id
	   * @param manager_pw
	   * @return
	   */
	  @RequestMapping(value="/manager/login.do", method=RequestMethod.POST)
	  public ModelAndView login_proc(HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session,
            String manager_id, String manager_pw,
            @RequestParam(value="id_save", defaultValue="") String id_save,
            @RequestParam(value="passwd_save", defaultValue="") String passwd_save){
	    
		ModelAndView mav = new ModelAndView();
	    
	    HashMap<Object, Object> map = new HashMap<Object, Object>();
	    map.put("manager_id", manager_id);
	    map.put("manager_pw", manager_pw);
	    
	    int cnt = this.managerProc.login(map);
	    

  	
	    if (cnt == 1) { // ���� �н����尡 ��ġ�ϴ� ���
	    	ManagerVO managerVO = this.managerProc.readById(manager_id);
	    	mav.addObject("managerVO", managerVO);
	    	
	    	session.setAttribute("managerno", managerVO.getManagerno());
	        session.setAttribute("manager_id", manager_id);
	        session.setAttribute("managerVO", managerVO);
	        
	     // -------------------------------------------------------------------
	        // id ���� ��� ����
	        // -------------------------------------------------------------------
	        if (id_save.equals("Y")) { // id�� ������ ���
	          Cookie ck_id = new Cookie("ck_id", manager_id);
	          ck_id.setMaxAge(60 * 60 * 72 * 10); // 30 day, �ʴ���
	          response.addCookie(ck_id);
	        } else { // N, id�� �������� �ʴ� ���
	          Cookie ck_id = new Cookie("ck_id", "");
	          ck_id.setMaxAge(0);
	          response.addCookie(ck_id);
	        }
	        // id�� �������� �����ϴ�  CheckBox üũ ����
	        Cookie ck_id_save = new Cookie("ck_id_save", id_save);
	        ck_id_save.setMaxAge(60 * 60 * 72 * 10); // 30 day
	        response.addCookie(ck_id_save);
	        // -------------------------------------------------------------------

	        // -------------------------------------------------------------------
	        // Password ���� ��� ����
	        // -------------------------------------------------------------------
	        if (passwd_save.equals("Y")) { // �н����� ������ ���
	          Cookie ck_passwd = new Cookie("ck_passwd", manager_pw);
	          ck_passwd.setMaxAge(60 * 60 * 72 * 10); // 30 day
	          response.addCookie(ck_passwd);
	        } else { // N, �н����带 �������� ���� ���
	          Cookie ck_passwd = new Cookie("ck_passwd", "");
	          ck_passwd.setMaxAge(0);
	          response.addCookie(ck_passwd);
	        }
	        // passwd�� �������� �����ϴ�  CheckBox üũ ����
	        Cookie ck_passwd_save = new Cookie("ck_passwd_save", passwd_save);
	        ck_passwd_save.setMaxAge(60 * 60 * 72 * 10); // 30 day
	        response.addCookie(ck_passwd_save);
	        // -------------------------------------------------------------------
		    mav.setViewName("/manager/mypage");    
	    } else {
	    	mav.setViewName("/manager/login_fail");
	    }

	    return mav;
	  }

	  /**
	   * �α׾ƿ� ó��
	   * @param session
	   * @return
	   */
	  @RequestMapping(value="/manager/logout.do", 
	                             method=RequestMethod.GET)
	  public ModelAndView logout(HttpSession session){
	    ModelAndView mav = new ModelAndView();
	    session.invalidate(); // ��� session ���� ����
	    
	    mav.setViewName("redirect:/manager/logout_msg.jsp");
	    
	    return mav;
	  }
	  
	  
	  // http://localhost:9090/team4/manager/mypage.do
	  /**
	   * �� ���� ��
	   * @return
	   */
	  @RequestMapping(value="/manager/mypage.do", method=RequestMethod.GET )
	  public ModelAndView mypage(int managerno) {
	    ModelAndView mav = new ModelAndView();
	    
	    ManagerVO managerVO = this.managerProc.read(managerno);
	    mav.addObject("managerVO", managerVO);
	    mav.addObject("managerno", managerVO.getManagerno());
	    mav.setViewName("/manager/mypage");
	    
	    return mav;
	  }

}
