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
                        <h3 class="text-center">Konwersacja</h3>


                        <div class="login-wiadomosci">
                            <c:forEach var="a" items="${skrzynka}">                              
                                
                                
                                <c:if test="${sessionScope.LogEmail != a.email}">
                                    <a href="users?login=${a.login_sender}"><p class="login-wiadomosci-odbiorcy">${a.login_sender}</p></a>
                                    <div class="wiadomosc-odbiorcy">
                                        <p>${a.content}</p>               
                                    </div>
                                </c:if>
                                
                                <c:if test="${sessionScope.LogEmail == a.email}">
                                    <a href="users?login=${a.login_sender}"><p class="login-wiadomosci-nadawcy">${a.login_sender}</p></a>
                                    <div class="wiadomosc-nadawcy">
                                        <p>${a.content}</p>               
                                    </div>
                                </c:if>
                                
                            </c:forEach>      
                        </div>


                        <div class="clearfix">                    
                        </div>

                        <hr width="100%" style="margin-top: 50px;"/>


                        <div class="col-md-offset-2 col-md-8 text-center">

                            <form action="response" method="post">
                                <c:forEach var="a" items="${skrzynka}">
                                    <input type="hidden" value="${a.id_conversation}" name="conversation">
                                </c:forEach>
                                <input name="user" value="${sessionScope.LogEmail}" type="hidden">
                                <input name="advert" value="${Ads.id_advert}" type="hidden">
                                <input name="advert_user" value="${Users.id_user}" type="hidden">
                                <input name="login_sender" value="${sessionScope.LogEmail}" type="hidden">
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
