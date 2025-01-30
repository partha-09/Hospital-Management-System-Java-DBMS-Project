package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        try {
            String fullName = req.getParameter("fullname").trim();
            String dob = req.getParameter("dob").trim();
            String qualification = req.getParameter("qualification").trim();
            String spec = req.getParameter("spec").trim();
            String email = req.getParameter("email").trim();
            String mobno = req.getParameter("mobno").trim();
            String password = req.getParameter("password").trim();

            if (fullName.isEmpty() || dob.isEmpty() || qualification.isEmpty() || spec.isEmpty() || 
                email.isEmpty() || mobno.isEmpty() || password.isEmpty()) {
                session.setAttribute("errorMsg", "All fields are required.");
                resp.sendRedirect("admin/doctor.jsp");
                return;
            }

            Doctor doctor = new Doctor(fullName, dob, qualification, spec, email, mobno, password);
            DoctorDao dao = new DoctorDao(DBConnect.getConn());

            if (dao.registerDoctor(doctor)) {
                session.setAttribute("succMsg", "Doctor added successfully.");
            } else {
                session.setAttribute("errorMsg", "Something went wrong on the server.");
            }
        } catch (Exception e) {
            session.setAttribute("errorMsg", "Internal server error.");
            e.printStackTrace();
        }

        resp.sendRedirect("admin/doctor.jsp");
    }
}
