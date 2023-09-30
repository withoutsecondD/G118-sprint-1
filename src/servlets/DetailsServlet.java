package servlets;

import db.DbManager;
import models.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet ("/taskDetails")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long taskId = Long.parseLong(req.getParameter("id"));
        Task task = DbManager.getTaskById(taskId);
        req.setAttribute("task", task);
        req.getRequestDispatcher("details.jsp").forward(req, resp);
    }
}
