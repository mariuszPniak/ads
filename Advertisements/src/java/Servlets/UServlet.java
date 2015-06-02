/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.Ads;
import DB.DBconnection;
import Beans.Users;
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
public class UServlet extends HttpServlet {

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
           
            
        String login=request.getParameter("login");
        String count=null;
        ResultSet result = null;
        ResultSet resultAds = null;
        Statement stmt = null;
        Ads adRecord = null;
        List<Ads> ads = new ArrayList<Ads>();
        Users user = null;
        
        Connection conn = DBconnection.connection();
            try {
                stmt = conn.createStatement();

                String sql = "select * from public.user where login='"+login+"';";
                out.println(sql);
                result=stmt.executeQuery(sql);
                
                if (result==null || !result.isBeforeFirst()){
                } else {
                        result.next();
                        user = new Users(result.getString("id_user"),result.getString("email"),result.getString("login"),result.getString("password"),result.getString("phone"),result.getString("place"));
                        
                }
                
                String userID=result.getString("id_user");
                
                sql = "select count(*) from public.advert where id_user='"+userID+"';";
                out.println(sql);
                result=stmt.executeQuery(sql);
                
                if (result==null || !result.isBeforeFirst()){
                } else {
                        result.next();
                        count = result.getString(1);
                }
                out.println("lalalalal");
                
                sql = "select * from public.advert where id_user='"+userID+"';";
                out.println("lalalalal");
                out.println(sql);
                resultAds=stmt.executeQuery(sql);
                if (resultAds==null || !resultAds.isBeforeFirst()){
                } else {
                    while(resultAds.next()){
                        adRecord = new Ads(resultAds.getString("id_advert"),resultAds.getString("id_user"),resultAds.getString("category"),resultAds.getString("title"),resultAds.getString("advert_date"),resultAds.getString("price"),resultAds.getString("content"),resultAds.getString("premium"),resultAds.getString("photo"));
                        ads.add(adRecord);
                    }
                }
                
                if(ads.size()!=0){
                   request.setAttribute("Ads", ads); 
                }
                request.setAttribute("Users", user);
                request.setAttribute("Count",count);
                request.getRequestDispatcher("user.jsp").forward(request, response);
                
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
