package filter;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;


public class LoginFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        if(session.getAttribute("admin") == null) {
            //未登录，跳转到登录页面
            response.sendRedirect("/dormitory/login.jsp");
        }else {
            //已经登陆,继续此次请求
            filterChain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
