package controller.loginAndLogout;

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
import model.dao.CustomerDao;
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
		session.setAttribute("ErrorMsgKey", errorMsgMap);
		// 1. 讀取使用者輸入資料
		String userEmail = req.getParameter("userEmail");
		String password = req.getParameter("pswd");
		// String rm = req.getParameter("rememberMe");
		// String requestURI = (String) session.getAttribute("requestURI");
		System.out.println(userEmail);
		System.out.println(password);
		if (userEmail == null || userEmail.trim().length() == 0) {
			errorMsgMap.put("AccountEmptyError", "帳號欄必須輸入");
		}
		// 如果 password 欄位為空白，放一個錯誤訊息到 errorMsgMap 之內
		if (password == null || password.trim().length() == 0) {
			errorMsgMap.put("PasswordEmptyError", "密碼欄必須輸入");
		}

		// 如果 errorMsgMap 不是空的，表示有錯誤，交棒給target
		if (!errorMsgMap.isEmpty()) {
			session.setAttribute("firstname", "null");
			session.setAttribute("lastname", "null");
			session.setAttribute("hasError", true);
			RequestDispatcher rd = req.getRequestDispatcher(target);
			rd.forward(req, resp);
			return;
		}
		
		LoginService ls = wac.getBean(LoginService.class);
		CustomerDao dao = wac.getBean(CustomerDao.class);
		CustomerBean mb = ls.checkEmailPassword(userEmail, password);
		
		if (mb != null) {
			session.setAttribute("LoginOK", mb);
		} else {
			errorMsgMap.put("LoginError", "該帳號不存在或密碼錯誤");
		}
		if (errorMsgMap.isEmpty()) {
			//如果session物件內含有"target"屬性物件，表示使用者先前嘗試執行某個應該登入，但使用者未登入的網頁
			//，由該網頁放置的"target"屬性物件，因次如果有"target"屬性物件則導向"target"屬性物件所標示的網頁，否則導向首頁。
			String contextPath = getServletContext().getContextPath();
//			System.out.println("contextPath ="+contextPath);
				session.setAttribute("hasError", false);
				CustomerBean bean =dao.select(userEmail);
				String firstname = bean.getFirstname();
				String lastname = bean.getLastname();
				session.setAttribute("customerBean", bean);
				session.setAttribute("firstname", "\""+firstname+"\"");
				session.setAttribute("lastname", "\""+lastname+"\"");
			if (target != null) {
//				System.out.println("success false");
				//先由session中移除此項屬性，否則下一次User直接執行login功能後，會再度被導向到target。
				session.removeAttribute("target");
				RequestDispatcher rd = req.getRequestDispatcher(target);
				rd.forward(req, resp);
//				System.out.println("contextPath + target ="+contextPath + target);
			} else {
				RequestDispatcher rd = req.getRequestDispatcher(contextPath+"/index.jsp");
				rd.forward(req, resp);
				System.out.println("contextPath +index.jsp = "+contextPath + "/index.jsp");
			}
			System.out.println("success");
			return;
		} else {
			session.setAttribute("hasError", true);
			//如果errorMsgMap不是空的，表示有錯誤，交棒給target。
			session.setAttribute("firstname", "null");
			session.setAttribute("lastname", "null");
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
