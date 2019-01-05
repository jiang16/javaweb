package web.admin;

import dao.UserDao;
import dao.iml.UserDaoIml;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DelStudentServlet", urlPatterns = "/admin/userlist")
public class DelStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = (int) request.getAttribute("id");
        UserDao userDao = new UserDaoIml();
        userDao.delete(id);
        response.sendRedirect("/dormitory/admin/user_list");
    }
}
