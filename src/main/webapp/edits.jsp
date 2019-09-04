<%--
  Created by IntelliJ IDEA.
  User: mouha
  Date: 14/08/2019
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Incription</title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
  <body>
  <form class="form-horizontal" action="editEtudiant">
    <fieldset>

      <!-- Form Name -->
      <legend>Inscription en ligne </legend>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label">ID</label>
        <div class="col-md-4">
            <input path="id"/>
          <span class="help-block">help</span>
        </div>
      </div>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label">NOM</label>
        <div class="col-md-4">
            <input path="nom"/>
          <span class="help-block">help</span>
        </div>
      </div>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label">PRENOM</label>
        <div class="col-md-4">
            <input path="prenom"/>
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
