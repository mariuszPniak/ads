<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="sectionsHTML/head.jsp" %>
    <body>

        <%@include file="sectionsHTML/header.jsp" %>

        
        <div id="content" style="margin-top: 30px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <%@include file="sectionsHTML/categories.jsp" %>
                    </div>
                    <div class="col-md-5 ogloszenie_left">
                        <h4>Sprzedam akwarium - tytuł ogłoszenia</h4>   
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur vero voluptatibus, laborum cumque, alias ducimus iste ipsa vel officia adipisci dignissimos. Pariatur delectus, debitis dignissimos reiciendis placeat fugit aliquid sint!</p>
                        <img src="img/opona.jpg" alt="zdjecie sprzedaz" class="img-responsive"/> 
                    </div>

                    <div class="col-md-4 ogloszenie_right">
                        <p><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>Sprzedam</p>
                        <p><span class="glyphicon glyphicon-time" aria-hidden="true"></span>20-05-2015</p>
                        <p><span class="glyphicon glyphicon-usd" aria-hidden="true"></span>250zł</p>
                        <p><span class="glyphicon glyphicon-user" aria-hidden="true"></span>marioRybak</p>
                        <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>111-222-333</p>
                        <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>adres@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>

        <div id="oddzielenie"></div>

        <%@include file="sectionsHTML/footer.jsp" %>
        <%@include file="sectionsHTML/scripts.jsp" %>

    </body>
</html>
