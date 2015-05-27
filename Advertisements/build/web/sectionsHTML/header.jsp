<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <a href="index.html"><img alt="logo" src="img/logo.png"></a>
                </div>

                <c:if test="${sessionScope.LogEmail == null}">
                    <div class="col-md-offset-4 col-md-4">
                        <form id="formSearch" action="search" method="get">
                            <div class="input-group szukaj">
                                <input type="text" class="form-control" name="searchText" placeholder="Wyszukaj ogłoszenie...">
                                <select class="form-control" name="searchSelect" id="select">
                                    <optgroup label="Praca">
                                        <option value="poszukuje_pracy">Poszukuję</option>
                                        <option value="zatrudnie">Zatrudnię</option>
                                    </optgroup>
                                    <optgroup label="Usługi">
                                        <option value="oferuje">Oferuję</option>
                                        <option value="poszukuje_usług">Poszukuję</option>
                                        <option value="finansowe">Finansowe</option>
                                        <option value="budowlane">Budowlane</option>
                                    </optgroup>
                                    <optgroup label="Komputery">
                                        <option value="kupie">Kupię</option>
                                        <option value="sprzedam">Sprzedam</option>
                                        <option value="gry">Gry, Programy</option>
                                        <option value="akcesoria">Akcesoria</option>
                                        <option value="wymienie">Wymienię</option>
                                        <option value="inne">Inne</option>
                                    </optgroup>
                                    <optgroup label="Motoryzacja">
                                        <option value="audi">Audi</option>
                                        <option value="bmw">BMW</option>
                                        <option value="ford">Ford</option>
                                        <option value="renault">Renault</option>
                                        <option value="toyota">Toyota</option>
                                        <option value="motocykle">Motocykle i Quadt</option>
                                        <option value="czesci">Części i akcesoria</option>
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
                       <form id="formSearch" action="search" method="get">
                            <div class="input-group szukaj">
                                <input type="text" class="form-control" name="searchText" placeholder="Wyszukaj ogłoszenie...">
                                <select class="form-control" name="searchSelect" id="select">
                                    <optgroup label="Praca">
                                        <option value="poszukuje_pracy">Poszukuję</option>
                                        <option value="zatrudnie">Zatrudnię</option>
                                    </optgroup>
                                    <optgroup label="Usługi">
                                        <option value="oferuje">Oferuję</option>
                                        <option value="poszukuje_usług">Poszukuję</option>
                                        <option value="finansowe">Finansowe</option>
                                        <option value="budowlane">Budowlane</option>
                                    </optgroup>
                                    <optgroup label="Komputery">
                                        <option value="kupie">Kupię</option>
                                        <option value="sprzedam">Sprzedam</option>
                                        <option value="gry">Gry, Programy</option>
                                        <option value="akcesoria">Akcesoria</option>
                                        <option value="wymienie">Wymienię</option>
                                        <option value="inne">Inne</option>
                                    </optgroup>
                                    <optgroup label="Motoryzacja">
                                        <option value="audi">Audi</option>
                                        <option value="bmw">BMW</option>
                                        <option value="ford">Ford</option>
                                        <option value="renault">Renault</option>
                                        <option value="toyota">Toyota</option>
                                        <option value="motocykle">Motocykle i Quadt</option>
                                        <option value="czesci">Części i akcesoria</option>
                                    </optgroup>
                                </select>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                                </span>
                            </div><!-- /input-group -->
                        </form>
                    </div>      
                </c:if>              
            </div>
        </div>


        <div class="pasek_gora">
        </div>
