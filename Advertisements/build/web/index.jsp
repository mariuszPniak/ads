<%-- 
    Document   : index
    Created on : 2015-05-20, 16:33:15
    Author     : Mariusz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Portal ogłoszeniowy - Szukajka</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>


        <!-- Widoczne tylko po zalogowaniu -->

        <c:if test="${sessionScope.LogEmail != null && sessionScope.LogEmail != ''}">
            <div class="zalogowany">
                <div class="container text-center">
                    <div class="row hidden-xs">
                        <div class="col-sm-6">
                            <span class="glyphicon glyphicon-user"></span>${sessionScope.LogEmail}
                        </div>
                        <div class="col-sm-6">
                            <span class="glyphicon glyphicon-log-out"></span><a href="logout">wyloguj się</a>
                        </div>
                    </div>

                    <div class="row visible-xs">
                        <div class="col-xs-8">
                            <span class="glyphicon glyphicon-user"></span>${sessionScope.LogEmail}
                        </div>
                        <div class="col-xs-4">
                            <span class="glyphicon glyphicon-log-out"></span><a href="logout">wyloguj się</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${sessionScope.LogEmail == null}">
            <div class="zalogowany">
                <div class="container">
                    <div class="col-xs-6">
                        <p class="text-center"><button type="button" class="btn btn-sm btn-warning" style="margin-top: -3px;" data-toggle="modal" data-target="#okienkoLogowania">Zaloguj się</button></p>
                    </div>
                    <div class="col-xs-6">
                        <p class="text-center"><button type="button" class="btn btn-sm btn-warning" style="margin-top: -3px;" data-toggle="modal" data-target="#okienkoRejestracji">Rejestracja</button></p>
                    </div>
                </div>
            </div>
        </c:if>

        <!-- okienko modal do logowania -->   
        <div class="modal fade" id="okienkoLogowania" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Zamknij</span></button>
                        <h3 class="modal-title text-center" id="myModalLabel">Logowanie</h3>
                    </div>
                    <form action="login" method="POST" role="form">
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Podaj swój adres e-mail">
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Wprowadź hasło">
                        </div>
                        <button type="submit" class="btn btn-primary button-login">Zaloguj</button>                                           
                    </form>
                </div>
            </div>
        </div>



        <div class="container gora_strony">
            <div class="row">
                <div class="col-md-4">
                    <a href="index.jsp"><img alt="logo" src="img/logo.png"></a>
                </div>

                <c:if test="${sessionScope.LogEmail == null}">
                    <div class="col-md-offset-4 col-md-4">
                        <form id="formSearch" action="search" method="get">
                            <div class="input-group szukaj">
                                <input type="text" class="form-control" name="searchText" placeholder="Wyszukaj ogłoszenie...">
                                <select class="form-control" name="searchSelect">
                                    <optgroup label="Praca">
                                        <option value="volvo">Poszukuję</option>
                                        <option value="saab">Zatrudnię</option>
                                    </optgroup>
                                    <optgroup label="Nieruchomości">
                                        <option value="mercedes">Sprzedam</option>
                                        <option value="audi">Wynajmę</option>
                                    </optgroup>
                                    <optgroup label="Kupię">
                                        <option value="mercedes">Dom</option>
                                        <option value="audi">Samochód</option>
                                    </optgroup>
                                </select>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                                </span>
                            </div><!-- /input-group -->
                        </form>
                    </div>
                </c:if>

                <c:if test="${sessionScope.LogEmail != null && sessionScope.LogEmail != ''}">
                    <div class="col-md-4 przycisk-dodaj">
                        <a href="dodaj.jsp"><button type="button" class="btn btn-info">Dodaj ogłoszenie</button></a>
                    </div>    
                    <div class="col-md-4">
                        <div class="input-group szukaj">
                            <input type="text" class="form-control">
                            <select class="form-control" name="szukajSelect">
                                <optgroup label="Praca">
                                    <option value="volvo">Poszukuję</option>
                                    <option value="saab">Zatrudnię</option>
                                </optgroup>
                                <optgroup label="Nieruchomości">
                                    <option value="mercedes">Sprzedam</option>
                                    <option value="audi">Wynajmę</option>
                                </optgroup>
                                <optgroup label="Kupię">
                                    <option value="mercedes">Dom</option>
                                    <option value="audi">Samochód</option>
                                </optgroup>
                            </select>
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                            </span>
                        </div><!-- /input-group -->
                    </div>      
                </c:if>              
            </div>
        </div>


        <div class="pasek_gora">
        </div>


        <div class="slider">
            <div id="tlo">
                <c:if test="${sessionScope.LogEmail == null || sessionScope.LogEmail == ''}">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-7">
                                <!-- <img class="img-responsive" src="img/girls.png" />-->
                            </div>

                            <div class="col-md-5 jumbotron pudlo">
                                <div class="pudlo2">
                                    <form action="login" method="POST" role="form">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Adres e-mail</label>
                                            <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="E-mail">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Hasło</label>
                                            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Hasło">
                                        </div>
                                        <div class="pull-left">
                                            <button type="submit" class="btn btn-default zaloguj">Zaloguj</button>
                                        </div>                                             
                                    </form>
                                    <button class="btn btn-default pull-right rejestracja" data-toggle="modal" data-target="#okienkoRejestracji">Rejestracja</button>                                     
                                </div>
                            </div> 

                            <div class="modal fade" id="okienkoRejestracji" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Zamknij</span></button>
                                            <h3 class="modal-title text-center" id="myModalLabel">Rejestracja</h3>
                                        </div>
                                        <form method="post" action="register">
                                            <div class="modal-body">
                                                <input type="text" name="email" class="form-control" placeholder="Twój e-mail" required>
                                                <input type="text" name="login" class="form-control" placeholder="Twój login" required>
                                                <input type="password" name="password" class="form-control" placeholder="Podaj swoje hasło" required>
                                                <input type="password" class="form-control" name="password2" placeholder="Powtórz hasło" required>
                                            </div>
                                            <div class="modal-footer">
                                                <label class="pull-left"><input type="checkbox" required> Akceptuję regulamin serwisu</label>
                                                <button type="submit" class="btn btn-primary">Zarejestruj się</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>



        <div class="container kolumny3">
            <div class="row">

                <div class="col-md-4">
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico1.png">
                            <h4>Darmowe ogłoszenia</h4>
                        </div>
                        <p>W naszej Szukajce zawsze możesz bezpłatnie dodać swe ogłoszenie. Jedyne co musisz zrobić, to się zarejstrować</p>
                    </div>
                </div>

                <div class="col-md-4" >
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico2.png">
                            <h4>Moderowane</h4>
                        </div>
                        <p>Każde ogłoszenie jest sprawdzane przez moderatorów, dzięki czemu masz pewność, że ogłoszenia są aktualne i prawdziwe.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico3.png">
                            <h4>Duża społeczność</h4>
                        </div>
                        <p>Spore grona użytkowników i odwiedzających nas gości daje pewność, że w naszej Szukajce znajdziesz każdą interesującą Cię rzecz.</p>
                    </div>
                </div>

            </div>
        </div>





        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <jsp:include page="category.jsp" />     
                    </div>

                    <div class="col-md-9">

                        <c:forEach var="a" items="${AdsPremium}">
                            <div class="ogloszenie_box_premium">
                                <a href="#"><h4>${a.id_user}</h4></a>
                                <h4>${a.title}</h4>
                                <h4 id="data">${a.advert_date}</h4>

                                <div class="clearfix">
                                </div>

                                <img src="img/advert/${a.photo}" width="85px" height="85px" alt="ogloszenie"/> 
                                <p>${a.content}<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 
                            </div>
                        </c:forEach>

                        <c:forEach var="a" items="${Ads}">
                            <div class="ogloszenie_box">
                                <a href="#"><h4>${a.id_user}</h4></a>
                                <h4>${a.title}</h4>
                                <h4 id="data">${a.advert_date}</h4>

                                <div class="clearfix">
                                </div>
                                <img src="img/advert/${a.photo}" width="85px" height="85px" alt="ogloszenie"/>
                                <p>${a.content}<a id="zobacz_wiecej" href="#">Zobacz więcej...</a></p> 
                            </div>
                        </c:forEach>


                        <nav id="nav_numer">
                            <ul class="pagination">
                                <li><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

                    
        <div id="oddzielenie"></div>

        <div id="strzalka"><a href="#"><img src="img/strzalka.png" ></a></div>
        
        
        <div id="footer">
            <jsp:include page="footer.jsp" />
        </div>

        
        <script src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>

    </body>
</html>
