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
        
        <form action="photo" method="POST" enctype="multipart/form-data">
            <label for="zdjecie">Dodaj zdjęcie</label>
            <input type="file" id="zdjecie" name="photo" class="form-control">
            <div class="regulamin">
                <h4 class="text-center">Regulamin serwisu</h4>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                <p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</p>
            </div>
            <label><input type="checkbox" name="regulamin" required> Akceptuję warunki regulaminu</label>
            <button type="submit" style="margin-top: 20px;" class="btn btn-primary button-login pull-right">Dodaj ogłoszenie</button>                                           
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
