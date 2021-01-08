<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Secret Code</title>
</head>
<body>
<div class="container text-center">
<div class="row mt-5">

<div class="col-4"></div>
<div class="col-4">
<p class="text-danger"><c:out value="${error}"/></p>
<form method="post" action="/process">
<div class="form-group mt-5">
<h3>What is the code?</h3>
<input type="text" class="form-control" name="code">
<button class="btn btn-dark mt-3">Try Code</button>
</div>
</form>
</div>
<div class="col-4"></div>
</div>
</div>
</body>
</html>