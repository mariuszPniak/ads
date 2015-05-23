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

            <div class="kategorie">
                <div id="kat1">
                    <h4>Praca</h4> 
                </div>
                <div id="podkategorie">
                    <ul>
                        <li><a href="#">Poszukuję</a></li>
                        <li><a href="#">Zatrudnię</a></li>
                    </ul>
                </div>          
            </div>

            <div class="kategorie">
                <div id="kat1">
                    <h4>Usługi</h4>
                </div>
                <div id="podkategorie">
                    <ul>
                        <li><a href="#">Oferuję</a></li>
                        <li><a href="#">Poszukuję</a></li>
                        <li><a href="#">Finansowe</a></li>
                        <li><a href="#">Budowlane</a></li>
                    </ul>
                </div>  
            </div>

            <div class="kategorie">
                <div id="kat1">
                    <h4>Komputery</h4>
                </div>
                <div id="podkategorie">
                    <ul>
                        <li><a href="#">Kupię</a></li>
                        <li><a href="#">Sprzedam</a></li>
                        <li><a href="#">Gry, Programy</a></li>
                        <li><a href="#">Akcesoria</a></li>
                        <li><a href="#">Wymienię</a></li>
                        <li><a href="#">Inne</a></li>
                    </ul>
                </div>  
            </div>

            <div class="kategorie">
                <div id="kat1">
                    <h4>Motoryzacja</h4>
                </div>
                <div id="podkategorie">
                    <ul>
                        <li><a href="#">Audi</a></li>
                        <li><a href="#">BMW</a></li>
                        <li><a href="#">Ford</a></li>
                        <li><a href="#">Renault</a></li>
                        <li><a href="#">Toyota</a></li>
                        <li><a href="#">Motocykle i Quady</a></li>
                        <li><a href="#">Części i akcesoria</a></li>
                    </ul>
                </div>  
            </div>

        </div>    <!-- end col-md-3  kategorie -->

      
      <div class="col-md-9 dodaj_ogloszenie">

        <h3 class="text-center">Dodaj ogłoszenie</h3>
        
        <form method="post" action="advert">
          <label for="select">Wybierz kategorię</label>
          <select class="form-control" name="category" id="select">
            <optgroup label="Praca">
              <option value="volvo">Poszukuję</option>
              <option value="saab">Zatrudnię</option>
            </optgroup>
            <optgroup label="Nieruchomości">
              <option value="mercedes">Sprzedam</option>
              <option value="audi">Wynajmę</option>
            </optgroup>
            <optgroup label="Kupię">
              <option value="mercedes">Dom</option>
              <option value="audi">Samochód</option>
            </optgroup>
          </select>        

          <label for="tytul">Tytuł ogłoszenia</label>
            <input type="text" name="title" class="form-control" id="tytul" requiered>
          <label for="cena">Cena(opcjonalnie)</label>
            <input type="text" name="price" class="form-control">
          <label for="tresc">Treść ogłoszenia</label>
            <textarea class="form-control" name="content" rows="6"></textarea>

          <label for="zdjecie">Dodaj zdjęcie(opcjonalnie)</label>
            <input type="file" id="zdjecie" class="form-control">
          
          <label for="typ" style="margin-top: 25px;">Typ ogłoszenia</label>
            <div id="typ">
              <label><input type="radio" name="premium" value="t"> Premium</label>
              <label><input type="radio" name="premium" value="f"> Zwykłe</label>
            </div>

          <button type="button" class="btn btn-default pull-left" style="margin-top: 50px;"><a href="index.jsp/">Powrót</a></button>
          <button type="submit" class="btn btn-default pull-right" style="margin-top: 50px;">Dodaj ogłoszenie</button>

        </form>

<!--<form method="post" action="advert">
    <input type="text" name="bb">
    <button type="submit">Przeslij</button>
</form>-->
      </div>

     </div>   <!-- end row -->
  </div>   <!-- end container --> 
</div>    <!-- end content -->

<div id="oddzielenie"></div>




<div id="strzalka"><a href="#"><img src="img/strzalka.png" ></a></div>

<div id="footer">
  <div id="footer_czarny">
    <div class="content_f">
      <div class="row">
        
        <div class="col-md-4 foot">
          <div id="srodek_f">
           <h2>Co moÅ¼emy powiedzieÄ o nas..</h2>
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt at odio, assumenda voluptas aperiam commodi aliquam laudantium nam placeat veritatis? </p>
           <ul>
              <li><a href="#">pierwsze cos</a></li>
              <li><a href="#">jako tako</a></li>
              <li><a href="#">ciÄÅ¼ka praca</a></li>
              <li><a href="#">sprzÄtaczka</a></li>
              <li><a href="#">pani lekkich obyczajÃ³w</a></li>
              <li><a href="#">no juz nie co</a></li>
              <li><a href="#">sprzÄtaczka</a></li>
              <li><a href="#">pani lekkich obyczajÃ³w</a></li>
              <li><a href="#">no juz nie co</a></li>
            </ul>

            <h2>Dlaczego?</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt at odio, assumenda voluptas aperiam commodi aliquam laudantium nam placeat veritatis? </p>
           
          </div>
        </div>

        <div class="col-md-4 foot">
           <div id="srodek_f">
           <h2>Informacje kontaktowe..</h2>
           <p class="pKontakt"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 600-121-888</p>
           <p class="pKontakt"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> 14-88-92-182</p>
           <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> kontakt@ogloszenia.pl</p>
           <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> pomoc_techniczna@ogloszenia.pl</p>
           <p class="pKontakt"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> pawel@ogloszenia.pl</p>
           

           <form role="form">
            <div class="form-group">
              <label for="exampleInputEmail1">Podaj twÃ³j e-mail</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="e-mail">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Zadaj szybkie pytanie</label>
              <textarea class="form-control" rows="3" placeholder="wpisz swoje pytanie.."></textarea>
            </div>
            <button type="submit" class="btn btn-default pytanie pull-right">WyÅlij</button>
          </form>
           
         </div>
        </div>

        <div class="col-md-4 foot">
          <div id="srodek_f">
           <h2>Humor na dzisiaj ;)</h2>
           <div class="embed-responsive embed-responsive-16by9">
             <iframe class="embed-responsive-item" src="//www.youtube.com/embed/HQ9W7fGVU9Q"></iframe>
           </div>
            <h2>Dowcip dnia..</h2>
           <p class="kawal">Idzie gÃ³wno z dupÄ ciemnym korytarzem, nagle gÃ³wno mÃ³wi:</p>
           <p class="kawal">-Tyyy ciemno tu jak w dupe</p>
           <p class="kawal">dupa sie wkurwiÅa i mÃ³wi:</p>
           <p class="kawal">-Ja teÅ¼ gÃ³wno widze!</p>
           <p class="kawal">hahahahahahahahahahahahah ;)</p>




         </div>
        </div>
      
      </div>
    </div>


  </div>
  
</div>


  
        <script src="js/jquery.js"> </script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
   
</body>
</html>
