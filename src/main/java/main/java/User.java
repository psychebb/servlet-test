package main.java;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class User extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String date = request.getParameter("date");

        if (name != null && !name.equals("")) {
            response.getOutputStream().write("welcome".getBytes());
        } else {
            request.setAttribute("error", "Sorry, name can't be empty. Please fill again");
            request.setAttribute("year", year);
            request.setAttribute("month", month);
            request.setAttribute("date", date);
            request.getRequestDispatcher("/user.jsp").forward(request, response);
        }
    }
}
