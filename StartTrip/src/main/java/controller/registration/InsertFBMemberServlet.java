package controller.registration;

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

@WebServlet("/InsertFBMemberServlet")
public class InsertFBMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Map<String, String> errorMsg = new HashMap<String, String>();
		Map<String,String> successMsg = new HashMap<String,String>(); 
		session.setAttribute("error", errorMsg);
		request.setAttribute("success",successMsg);

		// 讀取輸入資料
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String country = request.getParameter("country");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String birthday = request.getParameter("birthday");
		String password=request.getParameter("psd1");
		System.out.println(password);
		System.out.println(birthday);
		System.out.println(phonenumber);
		System.out.println(email);
		System.out.println(lastname);
		System.out.println(firstname);
		System.out.println(country);
		// 進行必要的型態轉換，

//		// 檢查輸入資料
//		if (password == null || password.trim().length() == 0) {
//			errorMsg.put("passworderr", "不能空白");
//		}
//		if (phonenumber.trim().length() < 10) {
//			errorMsg.put("phonenumbererr", "電話號碼格式不正確");
//		}
//		if (firstname.trim().length() < 1) {
//			errorMsg.put("firstnameerr", "名字 字數不足");
//		}
//		if  (lastname.trim().length() < 1) {
//			errorMsg.put("lastnameerr", "姓氏字數不足");
//		}
//		if  (email.trim().length() < 1) {
//			errorMsg.put("emailerr", "電子郵件 格式錯誤");
//		}
//		if  (birthday.trim().length() < 1) {
//			errorMsg.put("birthdayerr", "生日格式錯誤");
//		}
//		if (!errorMsg.isEmpty()) {
//			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
//			rd.forward(request, response);
//			return;
//		}
		// 轉向成功加入會員頁面
			WebApplicationContext wac=WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		try {
			// 將要寫入的資料裝到Bean內
			CustomerBean mb = new CustomerBean();
			mb.setEmail(email);
			mb.setBirthday(birthday);
			mb.setCountry(country);
			mb.setFirstname(firstname);
			mb.setLastname(lastname);
			mb.setPhonenumber(phonenumber);
			mb.setPassword(password);
			mb.setBlacklist(false);
			mb.setBonus(0);
			CustomerDao customerDao =wac.getBean(CustomerDao.class);
			if(customerDao.insert(mb)==null) {
				errorMsg.put("emailerr","此帳號已註冊過，請直接登入" );
				successMsg.put("InsertFBok", "此帳號已註冊過，請直接登入");
				System.out.println("insert(mb)="+mb);
			}
			session.setAttribute("mb", mb);
		} catch (Exception e) {
			errorMsg.put("excep","寫入資料時發生異常,訊息:" + e.getMessage() );
		}
		// 沒有任何錯誤時
		if (errorMsg.isEmpty()) {
			// 不這樣寫是因為頁面不會跳轉,若按重新整理寫入資料會重做一遍,容易有疑慮
			// RequestDispatcher rd =
			// request.getRequestDispatcher("跳轉頁面.jsp");
			// 新增資料成功,利用response.encodeRedirect送出回應,共用資料放在Session物件
			successMsg.put("InsertFBok", "恭喜您註冊成功。");
			System.out.println("InsertFBok"+ "恭喜您註冊成功。");
			String url = request.getContextPath() + "/index.jsp";
			String targetURL = response.encodeRedirectURL(url);
			response.sendRedirect(targetURL);
		} else {
			// 新增資料失敗,利用RequestDispatcher送出回應,共用資料放在request物件
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			System.out.println("InsertFB,flase");
			successMsg.put("InsertFBok", "此帳號已註冊過，請直接登入。");
			return;
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
