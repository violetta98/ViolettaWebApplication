package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;

/**
 * Created by Violetta on 2017-07-31.
 */
@WebServlet("/Result")
public class SimpleServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BigInteger a, b;
        a = new BigInteger(request.getParameter("t1"));
        b = new BigInteger(request.getParameter("t2"));
        String opr = request.getParameter("opr");
        BigInteger c = BigInteger.valueOf(0);
        String ex = "";
        if (opr.equals("+"))
            c = a.add(b);
        else if (opr.equals("-"))
            c = a.subtract(b);
        else if (opr.equals("*"))
            c = a.multiply(b);
        else if (opr.equals("/")) {
            if (b.equals(BigInteger.valueOf(0)))
                ex = "ex";
            else
                c = a.divide(b);
        }
        if (!ex.equals("ex")) {
            request.setAttribute("name", c.toString());
            request.getRequestDispatcher("/page.jsp").forward(request, response);
        }
        else
            request.getRequestDispatcher("/page2.jsp").forward(request, response);
    }
}
