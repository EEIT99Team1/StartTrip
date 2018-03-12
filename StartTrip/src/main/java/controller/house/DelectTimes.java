package controller.house;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TimesBean;
import model.service.TimesService;

/**
 * Servlet implementation class DelectTimes
 */
@WebServlet("/page/House/DelectTimes")
public class DelectTimes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TimesService timesService = new TimesService();
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		 String name= request.getParameter("name");
		 String roomname= request.getParameter("roomname");
		 String g= request.getParameter("goint");
		 String o= request.getParameter("outint");
		 System.out.println("go"+g);
		 System.out.println("out"+o);
		 int c=0;
		 try {
			int goint = Integer.parseInt(g);
			int outint = Integer.parseInt(o);
			TimesBean bean = new TimesBean();
			bean.setGoInt(goint);
			bean.setOutInt(outint);
			bean.setRoomName(roomname);
			bean.setName(name);
			c= timesService.delete(bean);
		} catch (Exception e) {
			System.out.println("~~~~~~");
			 request.getRequestDispatcher(
						"/page/House/TryDeleteTimes.jsp").forward(request, response);
			 return;		
		}
		 
		 if(c==1) {
			 request.setAttribute("delect", "刪除成功");
			 request.getRequestDispatcher(
						"/page/House/TryDeleteTimes.jsp").forward(request, response);
			 return;
		 }
		 
		 
		 request.setAttribute("delect", "刪除失敗");
		 request.getRequestDispatcher(
					"/page/House/TryDeleteTimes.jsp").forward(request, response);
		 
			 
	
		 
		 
	}

}
