package secondjsp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/DemoServlet")

public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemoServlet() {
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
		System.out.println("in server");
		String s1 = request.getParameter("t1");
		String r1 = new String();
		int n1 = Integer.parseInt(s1);
		int min = 1;
		int max = 99;
		int b = (int)(Math.random()*(max-min+1)+min);  
		String z = new String();
		int hs = 0;
		int sig=0;
		if(n1 >= 100 || n1 < 0) {
			r1 = "error";
		} else {
		 r1 = String.valueOf(n1);
		 z = String.valueOf(b);
		}
		
		request.setAttribute("res",z);
		request.setAttribute("result", r1);
		RequestDispatcher rd = request.getRequestDispatcher("demo.jsp");
		rd.forward(request, response);
	}
}
