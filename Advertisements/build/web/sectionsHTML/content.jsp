<%@page contentType="text/html" pageEncoding="UTF-8"%>
                        <c:forEach var="a" items="${AdsPremium}">
                            <div class="ogloszenie_box_premium">
                                <form id="Ogloszenia_form" action="users" method="get"><input type="hidden" name="login" value="${a.id_user}"><input id="user_input" type="submit" value="${a.id_user}"></form>
                                <h4>${a.title}</h4>
                                <h4 id="data">${a.advert_date}</h4>

                                <div class="clearfix">
                                </div>

                                <img src="img/advert/${a.photo}" width="85px" height="85px"  alt="ogloszenie"/> 
                                <form method="get" action="ogloszenie"><input name="ogloszenie" value="${a.id_advert}" type="hidden">
                                    <p>${a.content}<input id="zobacz_wiecej" type="submit"></p> 
                                </form>
                            </div>
                        </c:forEach>

                        <c:forEach var="a" items="${Ads}">
                            <div class="ogloszenie_box">
                                <form id="Ogloszenia_form" action="users" method="get"><input type="hidden" name="login" value="${a.id_user}"><input id="user_input" type="submit" value="${a.id_user}"></form>
                                <h4>${a.title}</h4>
                                <h4 id="data">${a.advert_date}</h4>

                                <div class="clearfix">
                                </div>
                                <img src="img/advert/${a.photo}" width="85px" height="85px" alt="ogloszenie"/>
                                <form method="get" action="ogloszenie"><input name="ogloszenie" value="${a.id_advert}" type="hidden">
                                    <p>${a.content}<input id="zobacz_wiecej" value="Zobacz więcej..." type="submit"></p> 
                                </form>
                            </div>
                        </c:forEach>
