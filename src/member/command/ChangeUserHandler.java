package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import member.service.ChangeUserService;
import member.service.InvalidPasswordException;
import member.service.MemberNotFoundException;
import mvc.controller.CommandHandler;

public class ChangeUserHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/WEB-INF/view/changeUserForm.jsp";
	private ChangeUserService changeUserSvc = new ChangeUserService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
 
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		User user = (User)req.getSession().getAttribute("authUser");
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		String curPwd = req.getParameter("curPwd");
		String newPwd = req.getParameter("newPwd");
		String newPhone = req.getParameter("newPhone");
		String newAddr = req.getParameter("newAddr");
		String newEmail = req.getParameter("newEmail");
		
		if (curPwd == null || curPwd.isEmpty()) {
			errors.put("curPwd", Boolean.TRUE);
		}
		if (newPwd == null || newPwd.isEmpty()) {
			errors.put("newPwd", Boolean.TRUE);
		}
		if (newPhone == null || newPhone.isEmpty()) {
			errors.put("newPhone", Boolean.TRUE);
		}
		if (newAddr == null || newAddr.isEmpty()) {
			errors.put("newAddr", Boolean.TRUE);
		}
		if (newEmail == null || newEmail.isEmpty()) {
			errors.put("newEmail", Boolean.TRUE);
		}
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		try {
			changeUserSvc.changeUser(user.getId(), curPwd, newPwd, newPhone, newAddr, newEmail);
			return "/WEB-INF/view/changeUserSuccess.jsp";
		} catch (InvalidPasswordException e) {
			errors.put("badCurPwd", Boolean.TRUE);
			return FORM_VIEW;
		} catch (MemberNotFoundException e) {
			res.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return null;
		}
 	}

}
