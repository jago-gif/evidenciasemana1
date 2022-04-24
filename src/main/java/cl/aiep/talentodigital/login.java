package cl.aiep.talentodigital;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException{
        System.out.println("Bienvenido inicializado");
    }
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.print("entraste por get");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String userDone	= "usuario";
		String pasDone	= "1234";
		String error = "Usuario o contraseña incorrecta";
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("usuario").trim();
		String password = request.getParameter("contrasena").trim(); 
		if(userName ==null || !userName.equals(userDone)||password ==null || !password.equals(pasDone)) {
			HttpSession session = request.getSession();
			session.getAttribute(error);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/error.html");
			requestDispatcher.include(request,response);
		}else if(userName.equals(userDone)&&password.equals(pasDone)) {
			HttpSession session = request.getSession();
			session.setAttribute("Nombre de usuario", userName);
			session.setAttribute("Clave", pasDone);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/listarOrdenes.jsp");
			requestDispatcher.include(request,response);
			
			
		}
	}

public void destroy() {
    System.out.println(".........Se a destruido el proyecto.......");
}

}
