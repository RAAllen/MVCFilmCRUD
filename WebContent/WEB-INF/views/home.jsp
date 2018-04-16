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

<title>MVC Film Query App</title>
</head>
<body>
	<div class="container">
		<div>
			<h1>MVC Film Query</h1>
		</div>
		<div>
			<form action="result.do" method="GET">
				<label for="id"><h4>Search for a film by id</h4></label> <input
					type="number" name="id" /> <input type="submit" value="submit">Search
				by Id</input>
			</form>
			<form action="result.do" method="GET">
				<label for="keyword"><h4>Search for a film by keyword</h4></label> <input
					type="text" name="keyword" /> <input type="submit" value="submit">Search
				by Keyword</input>
			</form>
			<form action="addFilm.do" method="GET">
				<h4>Add a new Film to the database:</h4>
				<label for="title"><h5>Add the title:</h5></label> <input
					type="text" name="title" /> <label for="description"><h5>Add
						a description:</h5></label> <input type="text" name="description" /> <label
					for="releaseYear"><h5>Add the release year:</h5></label> <input
					type="number" name="releaseYear" /> <label for="languageId"><h5>Add
						the language:</h5></label> <select name="languageId">
					<option value="1">English</option>
					<option value="2">Italian</option>
					<option value="3">Japanese</option>
					<option value="4">Mandarin</option>
					<option value="5">French</option>
					<option value="6">German</option>
				</select> <label for="rentalDuration"><h5>Add the rental length:
					</h5></label> <input type="number" name="rentalDuration" /> <label
					for="rentalRate"><h5>Add the rental rate:</h5></label> <input
					type="number" name="rentalRate" /> <label for="length"><h5>Add
						the length of the film:</h5></label> <input type="number" name="length" /> <label
					for="replacementCost"><h5>Add the replacement cost:</h5></label> <input
					type="number" name="replacementCost" /> <label for="rating"><h5>Add
						the rating:</h5></label> <select name="rating">
					<option value="G">G</option>
					<option value="PG">PG</option>
					<option value="PG13">PG-13</option>
					<option value="R">R</option>
					<option value="NC17">NC-17</option>
				</select> <label for="specialFeatures"><h5>Add the special
						features:</h5></label> <select name="specialFeatures">
					<option value="Trailers">Trailers</option>
					<option value="Commentaries">Commentaries</option>
					<option value="Deleted Scenes">Deleted Scenes</option>
					<option value="Behind the Scenes">Behind the Scenes</option>
				</select> <input type="submit" value="submit">Add the Film</input>
			</form>
			<form action="updateFilm.do" method="GET">
				<h4>Edit a Film in the database:</h4>
				<label for="id"><h5>What is the film's id?</h5></label>
				<input type="number" name="id"/>
				<label for="title"><h5>Add the title:</h5></label> <input
					type="text" name="title" /> <label for="description"><h5>Add
						a description:</h5></label> <input type="text" name="description" /> <label
					for="releaseYear"><h5>Add the release year:</h5></label> <input
					type="number" name="releaseYear" /> <label for="languageId"><h5>Add
						the language:</h5></label> <select name="languageId">
					<option value="1">English</option>
					<option value="2">Italian</option>
					<option value="3">Japanese</option>
					<option value="4">Mandarin</option>
					<option value="5">French</option>
					<option value="6">German</option>
				</select> <label for="rentalDuration"><h5>Add the rental length:
					</h5></label> <input type="number" name="rentalDuration" /> <label
					for="rentalRate"><h5>Add the rental rate:</h5></label> <input
					type="number" name="rentalRate" /> <label for="length"><h5>Add
						the length of the film:</h5></label> <input type="number" name="length" /> <label
					for="replacementCost"><h5>Add the replacement cost:</h5></label> <input
					type="number" name="replacementCost" /> <label for="rating"><h5>Add
						the rating:</h5></label> <select name="rating">
					<option value="G">G</option>
					<option value="PG">PG</option>
					<option value="PG13">PG-13</option>
					<option value="R">R</option>
					<option value="NC17">NC-17</option>
				</select> <label for="specialFeatures"><h5>Add the special
						features:</h5></label> <select name="specialFeatures">
					<option value="Trailers">Trailers</option>
					<option value="Commentaries">Commentaries</option>
					<option value="Deleted Scenes">Deleted Scenes</option>
					<option value="Behind the Scenes">Behind the Scenes</option>
				</select> <input type="submit" value="submit">Add the Film</input>
			</form>
		</div>
	</div>
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