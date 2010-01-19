package cz.mixx.blog.listeners;

import cz.mixx.blog.model.*;
import javax.servlet.*;


/**
 * Application Lifecycle Listener implementation class PokusListener
 */
public class PokusListener implements ServletContextListener
{
    public void contextInitialized(ServletContextEvent event)
    {
        ServletContext context = event.getServletContext();
        String dogName = context.getInitParameter("dog");
        context.setAttribute("dog", new Dog(dogName));
    }

    public void contextDestroyed(ServletContextEvent event)
    {
    }
}