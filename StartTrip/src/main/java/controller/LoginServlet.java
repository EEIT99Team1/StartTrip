package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.CustomerBean;
import model.service.login.LoginService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String target = (String) session.getAttribute("target");
		// System.out.println(target);
		// 準備存放錯誤訊息的Map物件
		Map<String, String> errorMsgMap = new HashMap<String, String>();
		// 將errorMsgMap放入request物件內，識別字串為 "ErrorMsgKey"
		req.setAttribute("ErrorMsgKey", errorMsgMap);
		// 1. 讀取使用者輸入資料
		String userEmail = req.getParameter("userEmail");
		String password = req.getParameter("pswd");
		// String rm = req.getParameter("rememberMe");
		// String requestURI = (String) session.getAttribute("requestURI");

		if (userEmail == null || userEmail.trim().length() == 0) {
			errorMsgMap.put("AccountEmptyError", "帳號欄必須輸入");
		}
		// 如果 password 欄位為空白，放一個錯誤訊息到 errorMsgMap 之內
		if (password == null || password.trim().length() == 0) {
			errorMsgMap.put("PasswordEmptyError", "密碼欄必須輸入");
		}

		// 如果 errorMsgMap 不是空的，表示有錯誤，交棒給target
		if (!errorMsgMap.isEmpty()) {
			req.setAttribute("hasError", true);
			RequestDispatcher rd = req.getRequestDispatcher(target);
			rd.forward(req, resp);
			return;
		}
		
		LoginService ls = wac.getBean(LoginService.class);
		CustomerBean mb = ls.checkEmailPassword(userEmail, password);

		if (mb != null) {
			session.setAttribute("LoginOK", mb);
		} else {
			errorMsgMap.put("LoginError", "該帳號不存在或密碼錯誤");
		}
		if (errorMsgMap.isEmpty()) {
			String contextPath = getServletContext().getContextPath();
			System.out.println("contextPath ="+contextPath);
			if (target != null) {
				System.out.println("target ="+target);
				session.removeAttribute("target");
				resp.sendRedirect(contextPath + target);
				System.out.println("contextPath + target ="+contextPath + target);
			} else {
				resp.sendRedirect(contextPath + "/index.jsp");
				System.out.println("contextPath +index.jsp = "+contextPath + "/index.jsp");
			}
			System.out.println("success");
			return;
		} else {
			RequestDispatcher rd = req.getRequestDispatcher(target);
			rd.forward(req, resp);
			System.out.println("Error");
			return;
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
