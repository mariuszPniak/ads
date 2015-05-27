<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <title>Portal ogłoszeniowy Szukajka - dodaj ogłoszenie</title>
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
      <a href="index.jsp"><img alt="logo" src="img/logo.png"></a>
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

      
      <div class="col-md-9 dodaj_ogloszenie">

        <h3 class="text-center">Dodaj ogłoszenie</h3>
        
        <form method="post" action="advert">
          <label for="select">Wybierz kategorię</label>
          <select class="form-control" name="category" id="select">
            <optgroup label="Praca">
              <option value="poszukuje_pracy">Poszukuję</option>
              <option value="zatrudnie">Zatrudnię</option>
            </optgroup>
            <optgroup label="Usługi">
              <option value="oferuje">Oferuję</option>
              <option value="poszukuje_uslug">Poszukuję</option>
              <option value="finansowe">Finansowe</option>
              <option value="budowlane">Budowlane</option>
            </optgroup>
            <optgroup label="Komputery">
              <option value="kupie">Kupię</option>
              <option value="sprzedam">Sprzedam</option>
              <option value="gry">Gry, Programy</option>
              <option value="akcesoria">Akcesoria</option>
              <option value="wymienie">Wymienię</option>
              <option value="inne">Inne</option>
            </optgroup>
            <optgroup label="Motoryzacja">
              <option value="audi">Audi</option>
              <option value="bmw">BMW</option>
              <option value="ford">Ford</option>
              <option value="renault">Renault</option>
              <option value="toyota">Toyota</option>
              <option value="motocykle">Motocykle i Quadt</option>
              <option value="czesci">Części i akcesoria</option>
            </optgroup>
          </select>        

          <label for="tytul">Tytuł ogłoszenia</label>
            <input type="text" name="title" class="form-control" id="tytul" requiered>
          <label for="cena">Cena(opcjonalnie)</label>
            <input type="text" name="price" class="form-control">
          <label for="tresc">Treść ogłoszenia</label>
            <textarea class="form-control" name="content" rows="6"></textarea>
          
          <label for="typ" style="margin-top: 25px;">Typ ogłoszenia</label>
            <div id="typ">
              <label><input type="radio" name="premium" value="t"> Premium</label>
              <label><input type="radio" name="premium" value="f"> Zwykłe</label>
            </div>

          <button type="button" class="btn btn-default pull-left" style="margin-top: 50px;"><a href="index.jsp/">Powrót</a></button>
          <button type="submit" class="btn btn-default pull-right" style="margin-top: 50px;">Dalej</button>

        </form>    

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
