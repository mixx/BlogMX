package cz.mixx.blog.servlets;

import cz.mixx.blog.model.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;


/**
 * Servlet implementation class PokusServlet
 */
public class PokusServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        List<String> options = new ArrayList<String>();
        options.add("První položka");
        options.add("Druhá položka");
        options.add("Příliš žluťoučký kůň úpěl ďábelské ódy.");

        Dog dog = (Dog) getServletContext().getAttribute("dog");
        options.add(dog.getName());

        request.setAttribute("options", options);
        request.setAttribute("dog", dog);

        RequestDispatcher view = request.getRequestDispatcher("pokus.jsp");
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
    }
}