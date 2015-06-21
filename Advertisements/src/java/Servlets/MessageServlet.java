/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.Ads;
import Beans.Message;
import Beans.SkrzynakaOdbiorcza;
import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mariusz
 */
public class MessageServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String conv = request.getParameter("conversation");
            List<Message> message = new ArrayList<Message>();
            String email1 = null;
            String email2 = null;
            ResultSet result = null;
            Statement stmt = null;

  //          int ilosc_wiadomosci=0;
            Connection conn = DBconnection.connection();
            try {
                stmt = conn.createStatement();
                HttpSession session = request.getSession();

                System.out.println("Przed zapytaniem ----------------------");

                String sql = "select id_message, content, id_conversation, date_message, login_sender, email from message join public.user on login_sender=login where id_conversation = "+conv+";";
                result = stmt.executeQuery(sql);
                System.out.println("Po zapytaniem ----------------------");
                if (result == null || !result.isBeforeFirst()) {
                } else {
                    while (result.next()) {
                        Message m = new Message(result.getString("id_message"), result.getString("content"), result.getString("id_conversation"), result.getString("date_message"), result.getString("login_sender"),result.getString("email"));
                        message.add(m);
                    }
                }

                


//                sql = "select id_conversation, count(id_message) as \"liczba wiadomosci\" from message group by id_conversation order by 2 asc;";
                        //                ResultSet RSi = stmt.executeQuery(sql);
                        //                if (RSi==null || !RSi.isBeforeFirst()){
                        //                } else {
                        //                        RSi.next();
                        //                        ilosc_wiadomosci = RSi.getInt("liczba wiadomosci");
                        //                        System.out.println("Przed przeniesieniem ----------------------" + ilosc_wiadomosci);
                        //                }
                
                
                request.setAttribute("email1", email1);
                request.setAttribute("email2", email2);
                request.setAttribute("skrzynka", message);
                //           request.setAttribute("il", ilosc_wiadomosci);
                request.getRequestDispatcher("wiadomosci.jsp").forward(request, response);

            } catch (SQLException ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                try {
                    if (result != null) {
                        result.close();
                    }
                    if (stmt != null) {
                        stmt.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
