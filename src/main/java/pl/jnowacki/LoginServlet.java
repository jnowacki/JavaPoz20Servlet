package pl.jnowacki;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")
public class LoginServlet extends HttpServlet {

    public final String USERNAME_KEY = "username";

    private final String NAME = "jedrzej";
    private final String PWD = "myPwd";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String pwd = req.getParameter("pwd");

        if(NAME.equals(name) && PWD.equals(pwd)) {
            req.getSession().setAttribute(USERNAME_KEY, name);
            resp.sendRedirect(req.getContextPath() + "/content");
        } else {
            resp.getWriter().println("Login NOK!");
        }
    }
}
