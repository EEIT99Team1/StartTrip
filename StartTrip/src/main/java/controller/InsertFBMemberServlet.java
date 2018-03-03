package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.CustomerBean;

public class InsertFBMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Map<String, String> errorMsg = new HashMap<String, String>();
		request.setAttribute("error", errorMsg);

		// 讀取輸入資料
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String country = request.getParameter("country");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String birthday = request.getParameter("birthday");
		
		// 進行必要的型態轉換，

		// 檢查輸入資料
		if (country == null || country.trim().length() == 0) {
			errorMsg.put("國家/地區", "不能空白");
		} else if (country.trim().length() < 1) {
			errorMsg.put("country", "字數不足，請重新輸入");
		}
		if (phonenumber == null || phonenumber.trim().length() == 0) {
			errorMsg.put("電話號碼", "電話號碼不能空白");
		} else if (phonenumber.trim().length() < 10) {
			errorMsg.put("phonenumber", "電話號碼格式不正確");
		}
		if (firstname == null || firstname.trim().length() == 0) {
			errorMsg.put("firstname", "Firstname不能空白");
		} else if (firstname.trim().length() < 1) {
			errorMsg.put("firstname", "Firstname字數不足");
		}
		if (lastname == null || lastname.trim().length() == 0) {
			errorMsg.put("lastname", "Lastname不能空白");
		} else if (lastname.trim().length() < 1) {
			errorMsg.put("lastname", "Lastname字數不足");
		}
		if (!errorMsg.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("/ch01/MemberForm.jsp");
			rd.forward(request, response);
			return;
		}
		// 轉向成功加入會員頁面
		HttpSession session = request.getSession();
		try {
			// 將要寫入的資料裝到Bean內
			CustomerBean mb = new CustomerBean();
			session.setAttribute("mb", mb);
		} catch (Exception e) {
			errorMsg.put("寫入資料時發生異常,訊息:" + e.getMessage() ,null);
		}
		// 沒有任何錯誤時
		if (errorMsg.isEmpty()) {
			// 不這樣寫是因為頁面不會跳轉,若案重新整理寫入資料會重做一遍,容易有疑慮
			// RequestDispatcher rd =
			// request.getRequestDispatcher("/ch01/InsertMemberSuccess.jsp");
			String url = request.getContextPath() + "/ch01/InsertMemberSuccess.jsp";
			String targetURL = response.encodeRedirectURL(url);
			// 新增資料成功,利用response.encodeRedirect送出回應,共用資料放在Session物件
			// 新增資料失敗,利用RequestDispatcher送出回應,共用資料放在request物件
			response.sendRedirect(targetURL);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/ch01/MemberForm.jsp");
			rd.forward(request, response);
			return;
		}
	}

}
