
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="slider">
    <div id="tlo">
        <c:if test="${sessionScope.LogEmail == null || sessionScope.LogEmail == ''}">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <!-- <img class="img-responsive" src="img/girls.png" />-->
                    </div>


                    <c:if test="${verify != null}">

                        <div class="col-md-5 jumbotron pudlo">
                            <div class="pudlo2">
                                <p class="bg-danger text-center dg">Podałeś błędne dane!</p>
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


                    </c:if>
                    
                    <c:if test="${verify == null}">
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
                    </c:if>
                    

                </div>
            </div>
        </c:if>
    </div>
</div>
