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
        <%@include file="sectionsHTML/slider.jsp" %>
        <%@include file="sectionsHTML/threeColumns.jsp" %>


        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <%@include file="sectionsHTML/categories.jsp" %>
                    </div>
                    <div class="col-md-9">
                        <%@include file="sectionsHTML/content.jsp" %> 
                    </div>     
                </div>
            </div>
        </div>


        <div id="oddzielenie"></div>

        <%@include file="sectionsHTML/footer.jsp" %>
        <%@include file="sectionsHTML/scripts.jsp" %>


    </body>
</html>
