package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.OperationData;
import com.form.UserInfo;

public class UserInfoServlet extends HttpServlet {
	private String info = null;
	OperationData data = null;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		info = request.getParameter("info");
		if(info.equals("checkUser")){
			
			this.check_user(request, response);
			
		}
	}
	private void check_user(HttpServletRequest request ,HttpServletResponse response)throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		  response.setContentType("text/html");
		  response.setCharacterEncoding("UTF-8");
		data = new OperationData();
		UserInfo userInfo = null;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String code = request.getParameter("code");
		String codeSession = (String)request.getSession().getAttribute("rand");
		System.out.println(codeSession);
		try {
			 userInfo = data.user_query(username);
		//	 System.out.println(userInfo.getPassword().toString());
		//	 System.out.println(userInfo.getEmail().toString());
		//	 System.out.println(userInfo.getUsername().toString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(code.equals(codeSession))
		{
			if(userInfo!=null){
				if(userInfo.getPassword().equals(password))
				{
					request.getSession().setAttribute("uname",username);
					response.getWriter().println("yes");
					//request.getRequestDispatcher("main.jsp").forward(request, response);
					//response.getWriter().println("<script>alert('匹配成功！！');</script>");
					//System.out.println("打开了checkuser.jsp");
					//request.getRequestDispatcher("3Dphoto.jsp").forward(request, response);
				}
			}
			else{
				response.getWriter().println("用户名或密码错误！");
			}
			
		}
		else{
			response.getWriter().println("验证码错误！");
		}
		
		//request.getSession().setAttribute("username","李四");
		//response.sendRedirect("zuizhong.jsp");
		//response.getWriter().println("<script language='javascript'>alert('完成！');</script>");
		//response.sendRedirect("EmbeddedLoginWindow.jsp");
		//System.out.println("打开了index.jsp");
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		//response.sendRedirect("3Dphoto.jsp");
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);

	}
}
