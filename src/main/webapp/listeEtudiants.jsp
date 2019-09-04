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
  <form action="ListeEtudiant" method="post">
  <table class="table">
<tr>
  <th scope="col">ID</th>
  <th scope="col">NOM</th>
  <th scope="col">PRENOM</th>
  <th scope="col">MODIFIER</th>
  <th scope="col">SUPRIMMER</th>
</tr>
<c:forEach  var="etudiant" items="${etudiantList}">
  <tr>
  <td>${etudiant.id}</td>
  <td>${etudiant.nom}</td>
  <td>${etudiant.prenom}</td>
    <td><a href="edits/${etudiant.id}">MODIFIER</a></td>
    <td><a href="deleteEtudiant/${etudiant.id}">SUPRIMMER</a></td>
  </tr>
</c:forEach>
  </table>
  </form>
  </body>
</html>