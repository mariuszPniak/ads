<%-- 
    Document   : index
    Created on : 2015-05-20, 16:33:15
    Author     : Mariusz
--%>

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
                    <div class="col-md-9 twoje_konto">

                        <h3 class="text-center">Użytkownik: ${Users.login}</h3>



                        <div class="tab-content">
                            <table class="table table-bordered text-center">
                                <tr>
                                    <td>Adres e-mail</td>
                                    <td>${Users.email}</td>
                                </tr>
                                <tr>
                                    <td>Login</td>
                                    <td>${Users.login}</td>
                                </tr>
                                <tr>
                                    <td>Telefon</td>
                                    <td>${Users.phone}</td>
                                </tr>
                                <tr>
                                    <td>Miejscowość</td>
                                    <td>${Users.place}</td>
                                </tr>
                                <tr>
                                    <td>Dodanych ogłoszeń</td>
                                    <td>${Count}</td>
                                </tr>
                            </table>



                            <div class="col-md-12">
                                <h3 class="text-center">Ogłoszenia użytkownika ${Users.login}</h3>
                                <c:forEach var="a" items="${Ads}">
                                    <div class="ogloszenie_usera">
                                        <form action="ogloszenie" method="get">
                                            <input type="hidden" value="${a.id_advert}" name="ogloszenie">
                                            <input id="input_ogloszenie_usera" class="center-block" type="submit" value="${a.title}">
                                        </form>
                                        <p>${a.content}</p>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>


                    </div>
                </div>   <!-- end row -->
            </div>   <!-- end container --> 
        </div>    <!-- end content -->

        <div id="oddzielenie"></div>




        <%@include file="sectionsHTML/footer.jsp" %>


        <%@include file="sectionsHTML/scripts.jsp" %>


    </body>
</html>
