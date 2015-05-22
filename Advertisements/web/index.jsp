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
                    <p class="text-center">Zaloguj się, aby móc dodać ogłoszenie.</p>
                </div>
            </div>
        </c:if>


        <div class="container gora_strony">
            <div class="row">
                <div class="col-md-4">
                    <a href="index.jsp"><img alt="logo" src="img/logo.png"></a>
                </div>

                <c:if test="${sessionScope.LogEmail == null}">
                    <div class="col-md-offset-4 col-md-4">
                        <div class="input-group szukaj">
                            <input type="text" class="form-control" placeholder="Wyszukaj ogłoszenie...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                            </span>
                        </div><!-- /input-group -->
                    </div>
                </c:if>

                <c:if test="${sessionScope.LogEmail != null && sessionScope.LogEmail != ''}">
                    <div class="col-md-4 przycisk-dodaj">
                        <a href="dodaj.jsp"><button type="button" class="btn btn-info">Dodaj ogłoszenie</button></a>
                    </div>    
                    <div class="col-md-4">
                        <div class="input-group szukaj">
                            <input type="text" class="form-control">
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
                                            <label for="exampleInputEmail1">Adres E-mail</label>
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
                            <h4>Nagłówek</h4>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum voluptate dolore facilis reprehenderit tempora non illo consequuntur alias iste. Repellat provident, omnis debitis dignissimos molestiae quia quas autem voluptas placeat.</p>
                    </div>
                </div>

                <div class="col-md-4" >
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico2.png">
                            <h4>Nagłówek</h4>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum voluptate dolore facilis reprehenderit tempora non illo consequuntur alias iste. Repellat provident, omnis debitis dignissimos molestiae quia quas autem voluptas placeat.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div id="kolumna">
                        <div id="naglowek">
                            <img src="img/ico3.png">
                            <h4>Nagłówek</h4>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum voluptate dolore facilis reprehenderit tempora non illo consequuntur alias iste. Repellat provident, omnis debitis dignissimos molestiae quia quas autem voluptas placeat.</p>
                    </div>
                </div>

            </div>
        </div>


        <div id="pasek_srodek">
            <div id="srodek_tlo">
                <div class="container box_container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group szukaj">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                                </span>
                            </div><!-- /input-group -->
                        </div><!-- /.col-lg-6 -->
                        <div class="col-md-2">
                            <select class="form-control pole_wyboru">
                                <option>Wszystkio</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select class="form-control pole_wyboru">
                                <option>Wszystkio</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <select class="form-control pole_wyboru">
                                <option>Wszystkio</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>



                    </div>
                </div><!-- /.row -->
            </div>
        </div>


        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">

                        <div class="kategorie">
                            <div id="kat1">
                                <h4><span class="glyphicon glyphicon-user" aria-hidden="true"> Praca</h4> 
                            </div>
                            <div id="podkategorie">
                                <ul>
                                    <li><a href="#">pierwsze cos</a></li>
                                    <li><a href="#">jako tako</a></li>
                                    <li><a href="#">ciężka praca</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                </ul>
                            </div>          
                        </div>

                        <div class="kategorie">
                            <div id="kat1">
                                <h4><span class="glyphicon glyphicon-home" aria-hidden="true"> Nieruchomości</h4>
                            </div>
                            <div id="podkategorie">
                                <ul>
                                    <li><a href="#">pierwsze cos</a></li>
                                    <li><a href="#">jako tako</a></li>
                                    <li><a href="#">ciężka praca</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                </ul>
                            </div>  
                        </div>

                        <div class="kategorie">
                            <div id="kat1">
                                <h4><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"> Kupię/Sprzedam</h4>
                            </div>
                            <div id="podkategorie">
                                <ul>
                                    <li><a href="#">pierwsze cos</a></li>
                                    <li><a href="#">jako tako</a></li>
                                    <li><a href="#">ciężka praca</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                </ul>
                            </div>  
                        </div>

                    </div>


                    <div class="col-md-9">
                        <c:forEach var="a" items="${Ads}">
                            <div class="ogloszenie_box">
                                <a href="#"><h4>${a.id_user}</h4></a>
                                <h4>${a.title}</h4>
                                <h4 id="data">${a.advert_date}</h4>

                                <div class="clearfix">
                                </div>

                                <img src="img/advert.png" alt="ogloszenie"/>
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
            <div id="footer_czarny">
                <div class="content_f">
                    <div class="row">

                        <div class="col-md-4 foot">
                            <div id="srodek_f">
                                <h2>Co możemy powiedzieć o nas..</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt at odio, assumenda voluptas aperiam commodi aliquam laudantium nam placeat veritatis? </p>
                                <ul>
                                    <li><a href="#">pierwsze cos</a></li>
                                    <li><a href="#">jako tako</a></li>
                                    <li><a href="#">ciężka praca</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                    <li><a href="#">sprzątaczka</a></li>
                                    <li><a href="#">pani lekkich obyczajów</a></li>
                                    <li><a href="#">no juz nie co</a></li>
                                </ul>

                                <h2>Dlaczego?</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt at odio, assumenda voluptas aperiam commodi aliquam laudantium nam placeat veritatis? </p>

                            </div>
                        </div>

                        <div class="col-md-4 foot">
                            <div id="srodek_f">
                                <h2>Informacje kontaktowe..</h2>
                                <p class="pKontakt"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 600-121-888</p>
                                <p class="pKontakt"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 14-88-92-182</p>
                                <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> kontakt@ogloszenia.pl</p>
                                <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> pomoc_techniczna@ogloszenia.pl</p>
                                <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> pawel@ogloszenia.pl</p>


                                <form role="form">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Podaj twój e-mail</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="e-mail">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Zadaj szybkie pytanie</label>
                                        <textarea class="form-control" rows="3" placeholder="wpisz swoje pytanie.."></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-default pytanie pull-right">Wyślij</button>
                                </form>

                            </div>
                        </div>

                        <div class="col-md-4 foot">
                            <div id="srodek_f">
                                <h2>Humor na dzisiaj ;)</h2>
                                <div class="embed-responsive embed-responsive-16by9">
                                    <iframe class="embed-responsive-item" src="//www.youtube.com/embed/HQ9W7fGVU9Q"></iframe>
                                </div>
                                <h2>Dowcip dnia..</h2>
                                <p class="kawal">Idzie gówno z dupą ciemnym korytarzem, nagle gówno mówi:</p>
                                <p class="kawal">-Tyyy ciemno tu jak w dupe</p>
                                <p class="kawal">dupa sie wkurwiła i mówi:</p>
                                <p class="kawal">-Ja też gówno widze!</p>
                                <p class="kawal">hahahahahahahahahahahahah ;)</p>




                            </div>
                        </div>

                    </div>
                </div>


            </div>

        </div>



        <script src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>

    </body>
</html>
