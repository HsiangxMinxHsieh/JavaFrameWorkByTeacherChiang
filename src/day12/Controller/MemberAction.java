package day12.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import day12.Dao.daoIm.MemberDao;
import day12.Model.member;

@WebServlet("/day12MemberAction")
public class MemberAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	private void doingAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String NAME =  request.getParameter("name");
		String USER = request.getParameter("user");
		String PASSWORD = request.getParameter("password");
		member m1 = new member(NAME,USER,PASSWORD);
		new MemberDao().add(m1);
//		System.out.println("收到的NAME是===>"+NAME);
		response.sendRedirect("./day12/member/day12ex1_ok.jsp");
		
//		response.getWriter().append("Served at: " + NAME).append(request.getContextPath());
			
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doingAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doingAction(request, response);
	}

}
