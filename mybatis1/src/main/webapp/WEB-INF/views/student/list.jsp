<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="${R}common.js"></script>
  <link rel="stylesheet" href="${R}common.css">
  <style>
    a.btn { float: right; margin: -20px 0 5px 0; }
    td:nth-child(1), td:nth-child(5) { text-align: center; }
  </style>
</head>
<body>
<div class="container">
  <h1>학생목록</h1>
  <a href="create" class="btn">학생등록</a>
  <table class="list">
    <thead>
      <tr>
        <th>id</th>
        <th>학번</th>
        <th>이름</th>
        <th>학과</th>
        <th>학년</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="student" items="${ students }">
        <tr data-url="edit?id=${ student.id }">
          <td>${ student.id }</td>
          <td>${ student.studentNumber }</td>
          <td>${ student.name }</td>
          <td>${ student.departmentName }</td>
          <td>${ student.year }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
