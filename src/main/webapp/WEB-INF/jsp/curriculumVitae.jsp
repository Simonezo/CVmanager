<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: nfabian
  Date: 2.5.16
  Time: 19:51
  Changed
  User: Simon Pavlik
  Date 11.5.16
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Curriculum vitae</title>
</head>
<body>

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Curriculum vitae</h2>
  <p>Can be used: .active, .success, .info, .warning, and .danger.</p>
  <table class="table table-striped">
    <thead>
      <tr class="info">
        <th>Basic information</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Full name:</th>
        <td>${cv.fullName}</td>
      </tr>

      <tr>
        <th>Address:</th>
        <td>${cv.address}</td>
      </tr>

      <tr>
        <th>Birthday:</th>
        <td>${cv.birthday}</td>
      </tr>

      <tr>
        <th>personalProfile:</th>
        <td>${cv.personalProfile}</td>
      </tr>
    </tbody>
  </table>

  <table class="table table-striped">
    <thead>
      <tr class="info">
        <th>Work skills</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>

<c:forEach items="${cv.workExperience}" var="item">
      <tr>
        <th><c:out value="${item.company}"/> - <c:out value="${item.position}"/></th>
        <td><c:out value="${item.from}"/> - <c:out value="${item.to}"/></td>
      </tr>
      <tr>
        <td><c:out value="${item.value}"/></td>
      </tr>
</c:forEach>

</tbody>
</table>

<table class="table table-striped">
    <thead>
      <tr class="info">
        <th>Educations</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>

<c:forEach items="${cv.educations}" var="item">
      <tr>
        <th><c:out value="${item.school}"/></th>
        <td><c:out value="${item.from}"/> - <c:out value="${item.to}"/></td>
      </tr>
      <tr>
        <td>Description: <c:out value="${item.value}"/></td>
      </tr>
</c:forEach>

</tbody>
</table>

<table class="table table-striped">
    <thead>
      <tr class="info">
        <th>Achievements</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>

<c:forEach items="${cv.achievements}" var="item">
      <tr>
        <th><c:out value="${item.title}"/></th>
        <td><c:out value="${item.year}"/></td>
      </tr>
      <tr>
        <td>Description: <c:out value="${item.value}"/></td>
      </tr>
</c:forEach>

</tbody>
</table>

<table class="table table-striped">
    <thead>
      <tr class="info">
        <th>Languages</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>

<c:forEach items="${cv.languages}" var="item">
      <tr>
        <th><c:out value="${item.lang}"/></th>
        <td><c:out value="${item.level}"/></td>
      </tr>
</c:forEach>

</tbody>
</table>

<table class="table table-striped">
    <thead>
      <tr class="info">
        <th>Skills</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>

<c:forEach items="${cv.skills}" var="item">
      <tr>
        <th><c:out value="${item.title}"/></th>
        <td><c:out value="${item.value}"/></td>
      </tr>
</c:forEach>

</tbody>
</table>

<table class="table table-striped">
    <thead>
      <tr class="warning">
        <th>Hobbies</th>
        <th> </th>
      </tr>
    </thead>
    <tbody>

<c:forEach items="${cv.hobbies}" var="item">
      <tr>
        <th><c:out value="${item.title}"/></th>
        <td><c:out value="${item.value}"/></td>
      </tr>
</c:forEach>

</tbody>
</table>

</div>



</body>
</html>
