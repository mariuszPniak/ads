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
                    
                    <div class="col-md-9">
                        <h3 class="text-center">Konwersacja - tytuł ogłoszenia</h3>
                        <div class="col-md-7 pull-left">
                            <p class="login-wiadomosci">Login nadawcy</p>
                            <div class="wiadomosc-nadawcy">
                                <p>Panie Kochany, a ta drukareczka to w jakim stanie?</p>
                            </div>
                        </div>
                        <div class="col-md-7 pull-right">
                            <p class="login-wiadomosci">Login odbiorcy</p>
                            <div class="wiadomosc-odbiorcy">
                                <p>W świetnym stanie, rewelacja, tylko brać.</p>
                            </div>
                        </div>
                        <div class="col-md-7 pull-left">
                            <p class="login-wiadomosci">Login nadawcy</p>
                            <div class="wiadomosc-nadawcy">
                                <p>Daje Pan słowo?</p>
                            </div>
                        </div>
                        
                        <div class="clearfix">                    
                        </div>
                        
                        <hr width="100%" style="margin-top: 50px;"/>
                        
                        <div class="col-md-offset-2 col-md-8 text-center">
                            <form action="response" method="post">
                                <label for="odpowiedz">Twoja odpowiedź</label>
                                <textarea class="form-control" name="odpowiedz" rows="6"></textarea>
                                <button type="submit" style="margin-top: 20px; padding: 6px 18px;" class="btn btn-primary pull-right">Wyślij</button> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                    
        <div id="oddzielenie"></div>

        <%@include file="sectionsHTML/footer.jsp" %>
        <%@include file="sectionsHTML/scripts.jsp" %>

    </body>
</html>
