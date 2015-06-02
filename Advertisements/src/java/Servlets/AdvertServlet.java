package Servlets;

import DB.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;
import java.util.GregorianCalendar;



import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;





/**
 *
 * @author szymon
 */


public class AdvertServlet extends HttpServlet {
    
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
            
            GregorianCalendar date = new GregorianCalendar();
            int year = date.get(Calendar.YEAR);
            int month = date.get(Calendar.MONTH);
            int day = date.get(Calendar.DAY_OF_MONTH);
            
            Statement stmt = null;
            Connection conn = DBconnection.connection();
            try {
                stmt = conn.createStatement();
                int id_user=1;
                int ilosc=0;
                
                ResultSet rs = stmt.executeQuery("Select id_user from public.user where email='" +request.getSession().getAttribute("LogEmail") + "'");
                while (rs.next()) {
                    id_user = rs.getInt(1);
                }
                rs.close();
                
                ResultSet rs2 = stmt.executeQuery("select count(id_advert) as liczba from public.advert;");
                while (rs2.next()) {
                    ilosc = rs2.getInt("liczba");
                }
                rs2.close();
                ilosc = ilosc + 1;
                
                
                String sql = "INSERT INTO public.advert (id_advert,id_user,category,title,advert_date,price,content,premium,photo) "
                        + "values(" + ilosc + "," + id_user + ",'" + request.getParameter("category") + "','" + request.getParameter("title") +"', '" + year+"-05-"+ day+"'," + request.getParameter("price") +",'" + request.getParameter("content") + "','" +request.getParameter("premium") +"','');";
                  
            //    out.println(request.getParameter("photo"));
            //    out.println(request.getParameter("premium") + request.getParameter("photo")+ request.getParameter("category"));
            //    stmt.executeQuery(sql);
                
           //     String sql2 = "UPDATE advert SET photo = '"+request.getParameter("photo")+"' WHERE id_advert ="+ilosc+";";
                response.sendRedirect("dodaj_zdjecie.jsp");

                stmt.executeQuery(sql);
                
          //      stmt.executeQuery(sql2);
                
                

            } catch (SQLException ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                out.close();
                try {
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
