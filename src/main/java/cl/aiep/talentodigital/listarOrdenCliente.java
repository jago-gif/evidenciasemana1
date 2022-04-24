package cl.aiep.talentodigital;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class listarOrdenCliente
 */
@WebServlet("/listarOrdenCliente")
public class listarOrdenCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listarOrdenCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String cNombre[]	= request.getParameterValues("cnombre");
		String cTelefono[]	= request.getParameterValues("cTelefono");
		String cDireccion[] = request.getParameterValues("cDireccion");
		String cElectro[]	= request.getParameterValues("cElectro");
		String cEstado[] 	= request.getParameterValues("cEstado");
		String fSoli[] 		= request.getParameterValues("fSoli");
		String fActu[] 		= request.getParameterValues("fActu"); 
		String enNom		= "";
		for (String nombreN : cNombre) {
			enNom += "cNombre="+nombreN+"&" ;
		 }
		 response.sendRedirect("/Actividad1/listarOrdenes.jsp?"+enNom);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
		}
			
	}


