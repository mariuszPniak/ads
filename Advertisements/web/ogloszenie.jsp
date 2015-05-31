
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="sectionsHTML/head.jsp" %>
    <body>



        <%@include file="sectionsHTML/header.jsp" %>



        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">

                      <%@include file="sectionsHTML/categories.jsp" %>  

                    </div>

      
                    <div class="col-md-5 ogloszenie_left">
                        <h3 class="text-center">${Ads.title}</h3>   
                        <p>${Ads.content}</p>
                        <img src="img/advert/${Ads.photo}" alt="zdjecie sprzedaz" class="img-responsive"/> 
                      </div>

                      <div class="col-md-4 ogloszenie_right">
                        <h3 class="text-center">Informacje</h3>
                        <p><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>${Ads.category}</p>
                        <p><span class="glyphicon glyphicon-time" aria-hidden="true"></span>${Ads.advert_date}</p>
                        <p><span class="glyphicon glyphicon-usd" aria-hidden="true"></span>${Ads.price}zł</p>
                        <p><span class="glyphicon glyphicon-user" aria-hidden="true"></span>${Users.login}</p>
                        <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>${Users.phone}</p>
                        <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>${Users.email}</p>
                        <p><span class="glyphicon glyphicon-home" aria-hidden="true"></span>${Users.place}</p>
                        <form method="get" action="users"><input type="hidden" name="login" value="${Users.login}"><button type="submit" class="center-block btn btn-primary">Wyświetl dane użytkownika</button></form>
                      </div>


            </div>   <!-- end row -->
         </div>   <!-- end container --> 
       </div>    <!-- end content -->

<div id="oddzielenie"></div>




        <%@include file="sectionsHTML/footer.jsp" %>


        <%@include file="sectionsHTML/scripts.jsp" %>
        


    </body>
</html>
