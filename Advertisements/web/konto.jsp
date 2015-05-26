<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>



<!-- Widoczne tylko po zalogowaniu -->


<div class="zalogowany">
  <div class="container text-center">
    <div class="row hidden-xs">
      <div class="col-sm-6">
        <span class="glyphicon glyphicon-user"></span>${sessionScope.LogEmail}
      </div>
      <div class="col-sm-6">
        <span class="glyphicon glyphicon-log-out"></span>wyloguj się
      </div>
    </div>

    <div class="row visible-xs">
      <div class="col-xs-8">
        <span class="glyphicon glyphicon-user"></span>${sessionScope.LogEmail}
      </div>
      <div class="col-xs-4">
        <span class="glyphicon glyphicon-log-out"></span>wyloguj
      </div>
    </div>

  </div>
</div>



<div class="container gora_strony">
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


<div id="content">
  <div class="container">
    <div class="row">
        <div class="col-md-3">
            <jsp:include page="category.jsp" />
        </div>    <!-- end col-md-3  kategorie -->

      
      <div class="col-md-9 twoje_konto">

        <h3 class="text-center">Twoje konto</h3>
        
        <ul class="nav nav-pills nav-stacked col-md-4">
          <li class="active"><a href="#twoje_dane" data-toggle="tab" class="active">Twoje konto</a></li>
          <li><a href="#edytuj_dane" data-toggle="tab">Edytuj swoje dane</a></li>
        </ul>

        <div class="tab-content">
          <div class="tab-pane fade in active col-md-8" id="twoje_dane">
            <table class="table table-bordered text-center">
              <tr>
                <td>Adres e-mail</td>
                <td>pomykacz.sz@gmail.com</td>
              </tr>
              <tr>
                <td>Login</td>
                <td>artek</td>
              </tr>
              <tr>
                <td>Telefon</td>
                <td>111-222-333</td>
              </tr>
              <tr>
                <td>Miejscowość</td>
                <td>Tarnów</td>
              </tr>
              <tr>
                <td>Dodanych ogłoszeń</td>
                <td>12</td>
              </tr>
            </table>
          </div>
          <div class="tab-pane fade col-md-8" id="edytuj_dane">
            <form method="get" action="#">
              <input type="text" class="form-control" placeholder="Nowy login">
              <input type="text" class="form-control" placeholder="Nowe hasło">
              <input type="text" class="form-control" placeholder="Nowy numer telefonu">
              <input type="text" class="form-control" placeholder="Nowa miejscowość">

              <button type="submit" class="btn btn-info pull-right">Prześlij</button>
            </form>
          </div>

          <div class="col-md-12">
              <h3 class="text-center">Twoje ogłoszenia</h3>

              <div class="ogloszenie_usera">
                <h5>Sprzedam rybki</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis voluptatibus consequuntur ducimus, reprehenderit ullam aliquam nulla vitae laudantium assumenda tempore dolorem cupiditate numquam veritatis dicta eveniet hic quo rerum id?</p>
              </div>
              <div class="ogloszenie_usera">
                <h5>Szukam pracy</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis voluptatibus consequuntur ducimus, reprehenderit ullam aliquam nulla vitae laudantium assumenda tempore dolorem cupiditate numquam veritatis dicta eveniet hic quo rerum id?</p>
              </div>
              <div class="ogloszenie_usera">
                <h5>Sprzedam samochÃ³d</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis voluptatibus consequuntur ducimus, reprehenderit ullam aliquam nulla vitae laudantium assumenda tempore dolorem cupiditate numquam veritatis dicta eveniet hic quo rerum id?</p>
              </div>
              
              <form method="get" action="#" class="usun">
                <p>Podaj numer ogłoszenia, które chcesz usunąć:</p><input type="text" class="form-control"><button type="submit" class="btn btn-danger">Usuń</button>
              </form>

          </div>
        </div>
        

      </div>

     </div>   <!-- end row -->
  </div>   <!-- end container --> 
</div>    <!-- end content -->

<div id="oddzielenie"></div>




<div id="strzalka"><a href="#"><img src="img/strzalka.png" ></a></div>

<div id="footer">
    <jsp:include page="footer.jsp" /> 
</div>


  
        <script src="js/jquery.js"> </script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
   
</body>
</html>
