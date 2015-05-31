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

                    <div class="col-md-9 dodaj_ogloszenie">
                        <h3 class="text-center">Dodaj ogłoszenie</h3>
                        <form method="post" action="advert">
                            <label for="select">Wybierz kategorię</label>
                            <select class="form-control" name="category" id="select">
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

                            <label for="tytul">Tytuł ogłoszenia</label>
                            <input type="text" name="title" class="form-control" id="tytul" requiered>
                            <label for="cena">Cena(opcjonalnie)</label>
                            <input type="text" name="price" class="form-control">
                            <label for="tresc">Treść ogłoszenia</label>
                            <textarea class="form-control" name="content" rows="6"></textarea>

                            <label for="typ" style="margin-top: 25px;">Typ ogłoszenia</label>
                            <div id="typ">
                                <label><input type="radio" name="premium" value="t"> Premium</label>
                                <label><input type="radio" name="premium" value="f"> Zwykłe</label>
                            </div>

                            <button type="button" class="btn btn-default pull-left" style="margin-top: 50px;"><a href="index.jsp/">Powrót</a></button>
                            <button type="submit" class="btn btn-default pull-right" style="margin-top: 50px;">Dalej</button>
                        </form>    
                    </div>
                </div>   <!-- end row -->
            </div>   <!-- end container --> 
        </div>    <!-- end content -->


        <div id="oddzielenie"></div>

        <%@include file="sectionsHTML/footer.jsp" %>
        <%@include file="sectionsHTML/scripts.jsp" %>

    </body>
</html>
