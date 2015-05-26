<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>


        <!-- Widoczne tylko po zalogowaniu -->


              <div class="container gora_strony" style="margin-top: 0px">
                <div class="row">
                  <div class="col-md-6">
                    <a href="#"><img alt="logo" src="img/logo.png"></a>
                  </div>
                  <div class="col-md-6">
                    <div class="input-group szukaj">
                        <input type="text" class="form-control" placeholder="Wyszukaj ogłoszenie...">
                        <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span> Szukaj</button>
                       </span>
                    </div><!-- /input-group -->
                  </div>
                </div>
              </div>

               
              <div class="pasek_gora">
              </div>


        <div class="slider">
            <div id="tlo">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-7">
                                <!-- <img class="img-responsive" src="img/girls.png" />-->
                            </div>

                            <div class="col-md-5 jumbotron pudlo">
                                <div class="pudlo2 rejestracja-info">
                                    <p>Dziękujemy za rejestrację. Aby móc dodać swoje ogłoszenie, wroć do strony głównej i zaloguj się na nowo utworzone konto.</p>
                                    <a href="index.jsp"><button type="button" class="btn btn-default">Strona główna</button></a>
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
