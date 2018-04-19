<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>MVC Film Query</title>
</head>
	<body>
		<div class="container">
			<div>
				<h1>MVC Film Query</h1>
				<h3>Results:</h3>
			</div>
			<div>
				<c:if test="${!empty film}">
					<ul>
						<li><h3>Title: ${film.title}</h3></li>
						<li><h3>ID: ${film.id}</h3></li>
						<li>Description: ${film.description}</li>
						<li>Release Year: ${film.releaseYear}</li>
						<li>Language ID: ${film.languageId}</li>
						<li>Rental Duration: ${film.rentalDuration}</li>
						<li>Rental Rate: ${film.rentalRate}</li>
						<li>Length: ${film.length}</li>
						<li>Replacement Cost: ${film.replacementCost}</li>
						<li>Rating: ${film.rating}</li>
						<li>Special Features: ${film.specialFeatures}</li>
					</ul>
					<form action="">
					</form>
					<form action="">
					</form>
				</c:if>
			</div>
		</div>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
	</body>
</html>