package controller.loginAndLogout;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.CustomerBean;
@WebFilter(
		urlPatterns= {"/*"},
		initParams= {
				@WebInitParam(name="mustLogin1",value="/webapp/index.jsp"),
		}
		)
public class LoginFilter implements Filter {
	Collection<String>url=new ArrayList<String>();
	String servletPath;
	String contextPath;
	String requestURI;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Enumeration<String> e = filterConfig.getInitParameterNames();
		while(e.hasMoreElements()) {
			String path=e.nextElement();
			url.add(filterConfig.getInitParameter(path));
		}
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		boolean isRequestedSessionIdValid = false;
		if(request instanceof HttpServletRequest && response instanceof HttpServletResponse) {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpServletResponse resp = (HttpServletResponse) response;
			servletPath = req.getServletPath();
			contextPath = req.getContextPath();
			requestURI = req.getRequestURI();
			isRequestedSessionIdValid = req.isRequestedSessionIdValid();
			
			if(mustLogin()) {
				if(checkLogin(req)) {
					//需要登入，但已經登入
					chain.doFilter(request, response);
				}else {
					//需要登入，尚未登入，所以彈出登入畫面
					HttpSession session = req.getSession();
					String target = (String) session.getAttribute("target");
					session.setAttribute("requestURI", requestURI);
					if(!isRequestedSessionIdValid) {
						session.setAttribute("timeout", "使用逾時，請重新登入");
					}
					resp.sendRedirect(target);
					System.out.println("contextPath+index = "+contextPath+"/webapp/index.jsp");
					return;
				}
			}else {
				chain.doFilter(request, response);
			}
		}else {
			throw new ServletException("Request/Response 型態錯誤(極不可能發生)");
		}
	}

	private boolean checkLogin(HttpServletRequest req) {
		HttpSession session = req.getSession();
		CustomerBean loginToken = (CustomerBean)session.getAttribute("LoginOK");
		if(loginToken==null) {
			return false;
		}else {
		return true;
		}
	}

	private boolean mustLogin() {
		boolean login = false;
		for(String sURL : url) {
			if(sURL.endsWith("*")) {
				sURL = sURL.substring(0, sURL.length()-1);
				if(servletPath.startsWith(sURL)) {
					login=true;
					break;
				}
			}else {
				if(servletPath.equals(sURL)) {
					login = true;
					break;
				}
			}
		}
		return login;
	}

	@Override
	public void destroy() {
		
	}

}
