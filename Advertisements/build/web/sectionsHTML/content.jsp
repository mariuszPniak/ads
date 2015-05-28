<%@page contentType="text/html" pageEncoding="UTF-8"%>
                        <c:forEach var="a" items="${AdsPremium}">
                            <div class="ogloszenie_box_premium">
                                <a href="#"><h4>${a.id_user}</h4></a>
                                <h4>${a.title}</h4>
                                <h4 id="data">${a.advert_date}</h4>

                                <div class="clearfix">
                                </div>

                                <img src="img/advert/${a.photo}" width="85px" height="85px"  alt="ogloszenie"/> 
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
