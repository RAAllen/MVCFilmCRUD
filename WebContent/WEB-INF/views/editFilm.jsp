<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>MVC Film Query</title>
</head>

<body>
	<div class="container">
		<div>
			<h1>MVC Film Query</h1>
			<a href="index.html"><button type="button" class="btn btn-primary">Home</button></a>
			<a href="addFilm.html"><button type="button" class="btn btn-primary">Add a Film</button></a>
		</div>
		<hr>
		<div>
			<form action="updateFilm.do" method="GET">
				<h4>Edit a Film in the database:</h4>
				<label for="id">What is the film's id?</label>
				<input type="number" name="id" />
				<br/>
				<label for="title">Add the title:</label>
				<input type="text" name="title" />
				<br/>
				<label for="description">Add a description:</label>
				<input type="text" name="description" />
				<br/>
				<label for="releaseYear">Add the release year:</label>
				<input type="number" name="releaseYear" />
				<br/>
				<label for="languageId">Add the language:</label>
				<select name="languageId">
					<option value="1">English</option>
					<option value="2">Italian</option>
					<option value="3">Japanese</option>
					<option value="4">Mandarin</option>
					<option value="5">French</option>
					<option value="6">German</option>
				</select>
				<br/>
				<label for="rentalDuration">Add the rental length:</label>
				<input type="number" name="rentalDuration" />
				<br/>
				<label for="rentalRate">Add the rental rate:</label>
				<input type="number" name="rentalRate" />
				<br/>
				<label for="length">Add the length of the film:</label>
				<input type="number" name="length" />
				<br/>
				<label for="replacementCost">Add the replacement cost:</label>
				<input type="number" name="replacementCost" />
				<br/>
				<label for="rating">Add the rating:</label>
				<select name="rating">
					<option value="G">G</option>
					<option value="PG">PG</option>
					<option value="PG13">PG-13</option>
					<option value="R">R</option>
					<option value="NC17">NC-17</option>
				</select>
				<br/>
				<label for="specialFeatures">Add the special features:</label>
				<input type="checkbox" name="specialFeatures" value="trailers">
				<label for="trailers">Trailers</label>
				<input type="checkbox" name="specialFeatures" value="commentaries"/>
				<label for="commentaries">Commentaries</label>
				<input type="checkbox" name="specialFeatures" value="deletedScenes"/>
				<label for="deletedScenes">Deleted Scenes</label>
				<input type="checkbox" name="specialFeatures" value="behindTheScenes"/>
				<label for="behindTheScenes">Behind the Scenes</label>
				<br>
				<input type="submit" value="Submit Your Edit" type="button" class="btn btn-primary"/>
			</form>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>