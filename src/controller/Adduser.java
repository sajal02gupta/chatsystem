package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.User;

/**
 * Servlet implementation class Adduser
 */
@WebServlet("/Adduser")
public class Adduser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adduser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String userName= request.getParameter("username");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		String confirmPass= request.getParameter("confirmpass");
		UserDao userDao= new UserDao();
		User user= new User(userName, email, password);
		String retUrl="";
		try {
			if (password.equals(confirmPass)) {
				userDao.create(user);
				 retUrl = "login.jsp";
			} else {
				System.out.println("inside else...");
				request.setAttribute("created", false);
				 retUrl = "accounts.jsp";
			}
		} finally {
			request.getRequestDispatcher(retUrl).forward(request, response);
		}
	}

}
