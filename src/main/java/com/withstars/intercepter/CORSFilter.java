package com.withstars.intercepter;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: withstars
 * Date: 2018-04-18
 * Time: 8:25
 * Mail: withstars@126.com
 */
public class CORSFilter implements Filter {


    public void init(FilterConfig var1) throws ServletException {}


    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.addHeader("Access-Control-Allow-Methods", "GET,POST,PATCH,PUT,OPTIONS");
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {}
}
