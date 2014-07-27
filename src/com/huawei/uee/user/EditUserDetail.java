package com.huawei.uee.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.huawei.uee.dbconnect.DAOFactory;

public class EditUserDetail extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String path = "EditUserDetail.jsp" ;
		String username = request.getParameter("username") ;
		User user = new User();
		user.setUsername(username);
		List<User> users = null;
		try
		{
			users = DAOFactory.getUserDAOInstance().selectUsersByUsername(user.getUsername());
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		user = users.get(0);
		System.out.println(user.getAge());
		
		HttpSession session = request.getSession();
		session.setAttribute("user",user) ;
		
		request.getRequestDispatcher(path).forward(request,response) ;
	}

}
