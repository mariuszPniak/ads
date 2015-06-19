package Servlets;

import Beans.Ads;
import Beans.Conversation;
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

public class UserServlet extends HttpServlet {

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

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String login = "";
            String phone = "";
            String place = "";
            int id_usera = 0;
            int number_of_ads = 0;

            List<Ads> userAds = new ArrayList<Ads>();
            List<SkrzynakaOdbiorcza> so = new ArrayList<SkrzynakaOdbiorcza>();
            List<Conversation> conv = new ArrayList<Conversation>();

            ResultSet result = null;
            ResultSet result2 = null;
            ResultSet result3 = null;
            Statement stmt = null;
            ResultSet rsEmail = null;

            Connection conn = DBconnection.connection();
            try {
                stmt = conn.createStatement();
                Statement stmt2 = conn.createStatement();
                Statement stmt3 = conn.createStatement();
                HttpSession session = request.getSession();

                String sql = "select * from public.user where email = '" + request.getSession().getAttribute("LogEmail") + "';";
                result = stmt.executeQuery(sql);
                while (result.next()) {
                    password = result.getString("password");
                    login = result.getString("login");
                    phone = result.getString("phone");
                    place = result.getString("place");
                    id_usera = result.getInt("id_user");
                    session.setAttribute("password", password);
                    session.setAttribute("login", login);
                    session.setAttribute("place", place);
                    session.setAttribute("phone", phone);
                }

                String sql2 = "select count(id_user) as ilosc_ogloszen from public.advert where id_user  = '" + id_usera + "';";
                result2 = stmt2.executeQuery(sql2);
                while (result2.next()) {
                    number_of_ads = result2.getInt("ilosc_ogloszen");
                    request.setAttribute("ilosc_ogloszen", number_of_ads);
                }

                String sql3 = "select * from advert where id_user = " + id_usera + ";";
                result = stmt.executeQuery(sql3);
                if (result == null || !result.isBeforeFirst()) {
                } else {
                    while (result.next()) {
                        Ads adRecord5 = new Ads(result.getString("id_advert"), result.getString("id_user"), result.getString("category"), result.getString("title"), result.getString("advert_date"), result.getString("price"), result.getString("content"), result.getString("premium"), result.getString("photo"));
                        userAds.add(adRecord5);
                    }
                }

//                String sql4 = "select * from conversation where id_user1=" + id_usera + ";";
//                result = stmt.executeQuery(sql4);
//                if (result == null || !result.isBeforeFirst()) {
//                } else {
//                    while (result.next()) {
//                        Conversation crecord = new Conversation(result.getString("id_conversation"),result.getString("id_advert"),result.getString("id_user1"),result.getString("id_user2"),result.getString("id_message"));
//                        conv.add(crecord);
//                    }
//                }
//                out.print(sql4);
                String sql5 = "select id_conversation, id_advert, title, login from advert join conversation using(id_advert) join public.user using(id_user)\n"
                        + "where advert.id_advert = conversation.id_advert and conversation.id_user1="+id_usera+" or conversation.id_user2="+id_usera+";";
//                out.print(sql5);
                result = stmt.executeQuery(sql5);
                if (result == null || !result.isBeforeFirst()) {
                } else {
                    while (result.next()) {
                       SkrzynakaOdbiorcza s = new SkrzynakaOdbiorcza(result.getString("id_conversation"),result.getString("id_advert"),result.getString("title"), result.getString("login"));
                        so.add(s);
                    }
                }
                request.setAttribute("skrzynka", so);
//                request.setAttribute("conv", conv);
                request.setAttribute("userAds", userAds);
                request.getRequestDispatcher("konto.jsp").forward(request, response);

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
