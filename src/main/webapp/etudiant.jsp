<%--
  Created by IntelliJ IDEA.
  User: mouha
  Date: 14/08/2019
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Incription</title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
  <body>
  <form class="form-horizontal" action="addEtudiant">
    <fieldset>

      <!-- Form Name -->
      <legend>Inscription en ligne </legend>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="id">ID</label>
        <div class="col-md-4">
          <input id="id" name="id" type="text" placeholder="" class="form-control input-md">
          <span class="help-block">help</span>
        </div>
      </div>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="nom">NOM</label>
        <div class="col-md-4">
          <input id="nom" name="nom" type="text" placeholder="" class="form-control input-md">
          <span class="help-block">help</span>
        </div>
      </div>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="prenom">PRENOM</label>
        <div class="col-md-4">
          <input id="prenom" name="prenom" type="text" placeholder="" class="form-control input-md">
          <span class="help-block">help</span>
        </div>
      </div>

      <!-- Button (Double) -->
      <div class="form-group">
        <label class="col-md-4 control-label" for="button1id">Double Button</label>
        <div class="col-md-8">
          <button id="button1id" name="button1id" type="submit" class="btn btn-success">VALIDER</button>
          <button id="button2id" name="button2id" type="reset" class="btn btn-danger">ANNULER</button>
        </div>
      </div>

    </fieldset>
  </form>


  </body>
</html>
