<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    </head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <body>
        <div class="container">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">E-commerce</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Ajout.jsp">Ajouter Produit</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AjoutCategorie.jsp">Ajouter Catégories</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Affichage.jsp">Afficher les produits</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Categories.jsp">Afficher les categories</a>
      </li>
   
      
    </ul>
    
  </div>
</nav>
        <form action="InsertCategorie.jsp" method="post">
            <h1>Ajout d'une categorie</h1>
            <div class="form-group">
                    <label>Nom Categorie</label>
                    <input class="form-control" type="text" name="nom"/>
            </div>
             <div class="form-group">
                        <label>Description</label>
                        <input class="form-control" type="text" name="description"/>
             </div>
             <div class="form-group">
            <button type="submit" class="btn btn-primary">Enregistrer</button>
            <button type="reset" class="btn">Reset</button>
             </div>
                   
        </form>
    <font color="red">
    <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.html">Accueil</a>
    </c:if>
    </font>
    <font color="green">
        <c:if test="${not empty param.susMsg}">
                <c:out value="${param.susMsg}" />
        </c:if>
    </font>
    </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
