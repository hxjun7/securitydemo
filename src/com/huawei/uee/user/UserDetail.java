package com.huawei.uee.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.huawei.uee.dbconnect.DAOFactory;

public class UserDetail extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String viewPath = "ViewUserDetail.jsp" ;
		String editPath = "EditUserDetail.jsp";
		String username = request.getParameter("username") ;
		String opermode = request.getParameter("opermode") ;
		User user = new User();
		user.setUsername(username);
		List<User> users = null;
		try
		{
			users = DAOFactory.getUserDAOInstance().selectUsersByUsername(user.getUsername());
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		user = users.get(0);
		System.out.println(user.getAge());
		
		//将用户信息存入session
		HttpSession session = request.getSession();
		session.setAttribute("user",user) ;
		
		if(opermode.equals("view"))
		{
			request.getRequestDispatcher(viewPath).forward(request,response) ;
		}else if(opermode.equals("edit"))
		{
			request.getRequestDispatcher(editPath).forward(request,response) ;
		}else
		{
			System.out.println("error");
		}
		
	}

}
