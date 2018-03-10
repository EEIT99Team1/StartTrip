package controller.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		Object LoginState = session.getAttribute("LoginOK");
		String target = (String) session.getAttribute("target");
//		判斷是否為登入狀態
		if(!(LoginState==null)) {
		session.removeAttribute("LoginOK");
		session.removeAttribute("hasError");
		session.removeAttribute("firstname");
		session.removeAttribute("lastname");
		resp.sendRedirect("/StartTrip/index.jsp");
//		resp.sendRedirect(target);
		System.out.println("登出成功");
		return;
		}
		System.out.println("登出失敗");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
	
	
}
