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
                        <jsp:include page="sectionsHTML/categories.jsp" />
                    </div>
                       
                           
                       
                    <div class="col-md-9 twoje_konto">
                        
                         <c:if test="${Deleted == true}">
                            <p class="bg-info text-center inf">Ogłoszenie zostało usunięte</p>
                         </c:if>
                        <h3 class="text-center">Twoje konto</h3>
                        <ul class="nav nav-pills nav-stacked col-md-4">
                            <li class="active"><a href="#twoje_dane" data-toggle="tab" class="active">Twoje konto</a></li>
                            <li><a href="#edytuj_dane" data-toggle="tab">Edytuj swoje dane</a></li>
                            <li><a href="#twoje_wiadomosci" data-toggle="tab">Twoja skrzynka odbiorcza</a></li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane fade in active col-md-8" id="twoje_dane">
                                <table class="table table-bordered text-center">
                                    <tr>
                                        <td>Adres e-mail</td>
                                        <td>${sessionScope.LogEmail}</td>
                                    </tr>
                                    <tr>
                                        <td>Login</td>
                                        <td>${sessionScope.login}</td>
                                    </tr>
                                    <tr>
                                        <td>Telefon</td>
                                        <td>${sessionScope.phone}</td>
                                    </tr>
                                    <tr>
                                        <td>Miejscowość</td>
                                        <td>${sessionScope.place}</td>
                                    </tr>
                                    <tr>
                                        <td>Dodanych ogłoszeń</td>
                                        <td><c:if test="${Deleted != null}">${ilosc_ogloszen-1}</c:if><c:if test="${Deleted == null}">${ilosc_ogloszen}</c:if></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="tab-pane fade col-md-8" id="edytuj_dane">
                                <form method="post" action="change-account">
                                    <input type="text" name="login" value="${sessionScope.login}" class="form-control" placeholder="Nowy login">
                                    <input type="text" name="new_password" value="${sessionScope.login}" class="form-control" placeholder="Nowe hasło">
                                    <input type="text" name="phone" value="${sessionScope.phone}" class="form-control" placeholder="Nowy numer telefonu">
                                    <input type="text" name="place" value="${sessionScope.place}" class="form-control" placeholder="Nowa miejscowość">
                                    <button type="submit" class="btn btn-info pull-right">Prześlij</button>
                                </form>
                            </div>
                                    
                            <div class="tab-pane fade col-md-8" id="twoje_wiadomosci">
                                <div class="ogloszenie_usera">
                                    <div id="usun">
                                        <a href="wiadomosci.jsp">Czytaj</a>
                                    </div>
                                    <form action="ogloszenie" method="get">
                                        <input type="hidden" value="${a.id_advert}" name="ogloszenie">
                                        <input id="input_ogloszenie_usera" class="center-block" type="submit" value="Kierowca">
                                    </form>                                 
                                    <p>Poszukujemy doświadczonych kierowców samochodów ciężarowych (tandem) praca na terenie Unii Europejskiej- prawo jazdy kat C+E, karta kierowcy, bez nałogów, umowa o pracę, dwutygodniowe kółka.</p>
                                </div>
                            </div>

                            <div class="col-md-12">                             
                                <h3 class="text-center">Moje ogłoszenia</h3>  
                                <c:forEach var="a" items="${userAds}">           
                                    <c:if test="${a.id_advert != nr}">
                                        <div class="ogloszenie_usera"> 
                                            <form action="delete" method="get">
                                                <input type="hidden" value="${a.id_advert}" name="ogloszenie">
                                                <input id="usun" class="center-block" type="submit" value="usuń">
                                            </form>
                                            <form action="ogloszenie" method="get">
                                                <input type="hidden" value="${a.id_advert}" name="ogloszenie">
                                                <input id="input_ogloszenie_usera" class="center-block" type="submit" value="${a.title}">
                                            </form>                                 
                                            <p>${a.content}</p>
                                        </div> 
                                    </c:if>
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
