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



<div id="content" style="margin-top: 30px;">
  <div class="container">
    <div class="row">
        <div class="col-md-3">
            <jsp:include page="category.jsp" />
        </div>


      <div class="col-md-5 ogloszenie_left">
        <h4>Sprzedam akwarium - tytuł ogłoszenia</h4>   
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur vero voluptatibus, laborum cumque, alias ducimus iste ipsa vel officia adipisci dignissimos. Pariatur delectus, debitis dignissimos reiciendis placeat fugit aliquid sint!</p>
        <img src="img/opona.jpg" alt="zdjecie sprzedaz" class="img-responsive"/> 
      </div>

      <div class="col-md-4 ogloszenie_right">
        <p><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>Sprzedam</p>
        <p><span class="glyphicon glyphicon-time" aria-hidden="true"></span>20-05-2015</p>
        <p><span class="glyphicon glyphicon-usd" aria-hidden="true"></span>250zÅ</p>
        <p><span class="glyphicon glyphicon-user" aria-hidden="true"></span>marioRybak</p>
        <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>111-222-333</p>
        <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>adres@gmail.com</p>
      </div>

    </div>
  </div>
</div>

<div id="oddzielenie"></div>




<div id="strzalka"><a href="#"><img src="img/strzalka.png" ></a></div>

<div id="footer">
    <jsp:include page="footer.jsp" />
</div>


        <script src="js/jquery.js"> </script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
   
</body>
</html>
