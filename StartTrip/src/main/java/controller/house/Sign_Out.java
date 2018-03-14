package controller.house;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import model.bean.HouseBean;


@WebServlet("/page/House/Sign_Out")
public class Sign_Out extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//String ss =(String) session.getAttribute("HouseLogin");
		HouseBean ss= new HouseBean();
		ss= (HouseBean) session.getAttribute("HouseLogin");
		//System.out.println(ss.toString());
		if(ss==null) {
			System.out.println("err");
		}
		
		else {
			session.removeAttribute("HouseLogin");
			//session.removeAttribute("HouseTarget");
			
		}
		
		request.getRequestDispatcher(
				"/page/House/BackstageHouse.jsp").forward(request, response);
		return;
		
	}

}
