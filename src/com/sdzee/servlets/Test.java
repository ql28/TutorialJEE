package com.sdzee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//gestion d'un parametre (indiqué dans l'url)
		String paramAuteur = request.getParameter("auteur");
		String message = "Transmission de variables : OK ! " + paramAuteur;
		request.setAttribute("test", message);
		this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
	}
}
