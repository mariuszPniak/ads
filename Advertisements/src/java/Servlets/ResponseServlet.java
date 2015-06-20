/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.Ads;
import Beans.Users;
import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author szymon
 */
public class ResponseServlet extends HttpServlet {

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
            
        String id_conversation=request.getParameter("conversation");
        String odp=request.getParameter("odpowiedz");
        String user=request.getParameter("user");
        String id_advert=request.getParameter("advert");
        String advert_user=request.getParameter("advert_user");
        String login_sender=request.getParameter("login_sender");
            
        int max = 0;
        int id_conv = Integer.parseInt(id_conversation);
        
        ResultSet result = null;
        Statement stmt = null;
        Connection conn = DBconnection.connection();
            try {
                stmt = conn.createStatement();
                Statement stmt2 = conn.createStatement();
                HttpSession session = request.getSession();

               
                String sql = "select * from public.user where email='"+user+"';";        
                result=stmt.executeQuery(sql);
                
                if (result==null || !result.isBeforeFirst()){
                } else {
                        result.next();
                        user = result.getString("id_user");
                        login_sender = result.getString("login");
                }
                
                
                sql = "select max(id_message) from message";
                ResultSet RSmax = stmt.executeQuery(sql);
                if (RSmax==null || !RSmax.isBeforeFirst()){
                } else {
                        RSmax.next();
                        max = RSmax.getInt(1)+1;        
                }
            
                System.out.println("Przed zapytaniem --------------------");
                response.sendRedirect("index.html");
               
                sql = "INSERT INTO message (id_message, content, id_conversation, date_message, login_sender)"
                        + " VALUES ('"+max+"','"+odp+"','"+id_conv+"',current_timestamp,'"+login_sender+"');";
                
                stmt.executeQuery(sql);
                System.out.println("Po zapytaniem --------------------");
                System.out.println(max+ odp + id_conversation + login_sender + "-------------");
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
