
package Servlets;

import Beans.Ads;
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
import java.io.PrintWriter;

/**
 *
 * @author Mariusz
 */
public class IndexServlet extends HttpServlet {

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

        
   //     PrintWriter out = response.getWriter();
        try (PrintWriter out = response.getWriter()) {
            
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        List<Ads> ads = new ArrayList<Ads>();
        List<Ads> adsPremium = new ArrayList<Ads>();
        
        ResultSet result = null;
        ResultSet rsEmail = null;
        Statement stmt = null;
      //  int b=0;
        Connection conn = DBconnection.connection();
            try {
                stmt = conn.createStatement();
                Statement stmt2 = conn.createStatement();
                HttpSession session = request.getSession();

                String sql = "select * from advert where premium='f' order by advert_date desc limit 10";                
                result=stmt.executeQuery(sql);
               
                if (result==null || !result.isBeforeFirst()){
                } else {
                    while(result.next()){
                        String sqlUserEmail = "select login from public.user where id_user="+result.getString("id_user")+";";
                        rsEmail = stmt2.executeQuery(sqlUserEmail);
                        rsEmail.next();
                        Ads adRecord = new Ads(result.getString("id_advert"),rsEmail.getString("login"),result.getString("category"),result.getString("title"),result.getString("advert_date"),result.getString("price"),result.getString("content"),result.getString("premium"),result.getString("photo"));
                        ads.add(adRecord);
                        System.out.println("poszlo");
                        System.out.println(ads);
            //            out.println(result.getString("photo"));
                    }
                }
                

                sql = "select * from advert where premium='t' order by advert_date desc";
                result=stmt.executeQuery(sql);
                
                if (result==null || !result.isBeforeFirst()){
                } else {
                    while(result.next()){
                        String sqlUserEmail = "select login from public.user where id_user="+result.getString("id_user")+";";
                        rsEmail = stmt2.executeQuery(sqlUserEmail);
                        rsEmail.next();
                        Ads adRecordPremium = new Ads(result.getString("id_advert"),rsEmail.getString("login"),result.getString("category"),result.getString("title"),result.getString("advert_date"),result.getString("price"),result.getString("content"),result.getString("premium"),result.getString("photo"));
                        adsPremium.add(adRecordPremium);
                    }
                }
                
                
                

                request.setAttribute("Ads", ads);
                request.setAttribute("AdsPremium", adsPremium);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
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

    } // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
