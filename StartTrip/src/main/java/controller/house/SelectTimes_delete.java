package controller.house;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TimesBean;
import model.service.TimesService;


@WebServlet("/page/House/SelectTimes_delete")
public class SelectTimes_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
	TimesService timesService = new TimesService();
	DateCompare compare = new DateCompare(); 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		 String name= request.getParameter("name");
		 String g= request.getParameter("gotime");
		 String t= request.getParameter("telephone");
		 java.util.Date gotime =null;
		 Integer telephone=null;
		 int c=0;
		 
		 Map<String, String> err = new HashMap<>();
			request.setAttribute("err", err);
		 
		 if((g==null || g.trim().length()==0)&&(t==null || t.trim().length()==0)) {
			 request.setAttribute("select","時間或是電話請輸入一個");				
				request.getRequestDispatcher(
						"/page/House/BackstageDeleteTimes.jsp").forward(request, response);
			 	return;	 
		 }
		 
		 
		 
		 if(g!=null && g.trim().length()!=0)
		 try {
			 gotime = simpleDateFormat.parse(g);
		
			 c=compare.getint(gotime);
			
		} catch (ParseException e) {			
			e.printStackTrace();		
			err.put("gotime", "日期格式有錯誤");		
		}
		 
		 if(!err.isEmpty()) {
			 request.getRequestDispatcher(
						"/page/House/BackstageDeleteTimes.jsp").forward(request, response);
			 return;		 
		 }
		 
		 List<TimesBean> bean =new ArrayList<TimesBean>(); 
		 

		if(gotime!=null && telephone==null) {
			bean=timesService.select(name, c);
			System.out.println(bean.size());
			request.setAttribute("bean", bean);
			 request.getRequestDispatcher(
						"/page/House/BackstageDeleteTimes.jsp").forward(request, response);
			 return;		
		}
		 
		 
		 
	}

}
