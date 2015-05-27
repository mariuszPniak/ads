
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
