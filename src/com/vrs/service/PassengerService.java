package com.vrs.service;

import com.vrs.dao.PassengerDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class PassengerService {

    private PassengerDAO passengerDAO = new PassengerDAO();

    public void getPassengersPrice(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println(String.format("%.2f", passengerDAO.getPassengersPrice(Integer.valueOf(req.getParameter("passengersCount")))));
    }
}
