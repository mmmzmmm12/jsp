package kr.co.farmstory.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.farmstory.controller.CommonService;
import kr.co.farmstory.dao.UserDao;
import kr.co.farmstory.vo.UserVO;


public class RegisterService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) {
		
		if(req.getMethod().equals("GET")) {
			return "/user/register.jsp";
		}else {
		
			UserDao dao = UserDao.getInstance();
			
			//파라미터 수신
			UserVO vo = new UserVO();
			
			vo.setUid(req.getParameter("id"));
			vo.setPass(req.getParameter("pw1"));
			vo.setName(req.getParameter("name"));
			vo.setNick(req.getParameter("nick"));
			vo.setEmail(req.getParameter("email"));
			vo.setHp(req.getParameter("hp"));
			vo.setAddr1(req.getParameter("addr1"));
			vo.setAddr2(req.getParameter("addr2"));
			vo.setRegip(req.getRemoteAddr());
			
			try {
				dao.register(vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return "redirect:/farmstory/user/login.do";
			
		}
		
	}

}
