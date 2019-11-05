package day11_16.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import day11_16.model.Pro1;


@WebServlet("/day11_16test2")
public class day11_16test2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public day11_16test2() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ApplicationContext a1 = new ClassPathXmlApplicationContext("sp1.xml");
		Pro1 p1 = (Pro1)a1.getBean("p1");
		String NAME = request.getParameter("name");
		int CHI = Integer.parseInt(request.getParameter("chi"));
		p1.getA().setName(NAME);
		p1.getA().setChi(CHI);
		HttpSession s = request.getSession();
		s.setAttribute("A",p1.getA());
		
		response.sendRedirect("day11_16/day11_16ex2_Spring_example_OK.jsp");
	}

}
