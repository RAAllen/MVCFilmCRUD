package com.skilldistillery.film.entities;

import java.util.List;
import com.skilldistillery.iomanager.common.*;

public class Film {
	private static IOManager ioManager = new SystemIOManager();
	private int id;
	private String title;
	private String description;
	private int releaseYear;
	private int languageID;
	private int rentalDuration;
	private double rentalRate;
	private int length;
	private double replacementCost;
	private String rating;
	private String specialFeatures;
	private List<Actor> cast;
	private String language;

	public Film(int id, String title, String description, int releaseYear, String language, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.releaseYear = releaseYear;
		this.language = language;
		this.rentalDuration = rentalDuration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
	}
	
	public Film(String title, String description, int releaseYear, int languageID, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures) {
		super();
		this.title = title;
		this.description = description;
		this.releaseYear = releaseYear;
		this.languageID = languageID;
		this.rentalDuration = rentalDuration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
	}
	

	public void printFilm(Film film) {
		int id = film.getId();
		String title = film.getTitle();
		String description = film.getDescription();
		int releaseYear = film.getReleaseYear();
		String language = film.getLanguage();
		int rentalDuration = film.getRentalDuration();
		double rentalRate = film.getRentalRate();
		int length = film.getLength();
		double replacementCost = film.getReplacementCost();
		String rating = film.getRating();
		String specialFeatures = film.getSpecialFeatures();
		List<Actor> cast = film.getCast();
		String printedCast = printCast(cast);
		if (printedCast.equals("")) {
			ioManager.print(new TextWithNewLine("\nFilm " + id + " : \""+ title + "\"\n✩ " + description + "\n✩ Rating: " + rating + "\n✩ Released: " + releaseYear + "\n✩ Release Language: " + language + "\n✩ Length: " + length + " minutes\n✩ Special features: " + specialFeatures + "\nRent for " + rentalDuration + " days for $" + rentalRate + ", replace for $" + replacementCost + ".\n"));
		}
		else {
			ioManager.print(new TextWithNewLine("\nFilm " + id + " : \""+ title + "\"\n✩ " + description + ".\n✩ Starring: " + printedCast + "\n✩ Rating: " + rating + "\n✩ Released: " + releaseYear + "\n✩ Release Language: " + language + "\n✩ Length: " + length + " minutes\n✩ Special features: " + specialFeatures + "\nRent for " + rentalDuration + " days for $" + rentalRate + ", replace for $" + replacementCost + ".\n"));
		}
	}
	
	public String printCast(List<Actor> cast) {
		StringBuilder castToPrint= new StringBuilder();
		int i = 0;
		for (Actor actor : cast) {
			if(i < cast.size() - 1)
			castToPrint.append(actor.toString() + ", ");
			else {
				castToPrint.append(actor.toString() + ".");
			}
			i++;
		}
		String finishedCast= castToPrint + "";
		return finishedCast;
	}
	
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
    public List<Actor> getCast() {
		return cast;
	}
	public void setCast(List<Actor> cast) {
		this.cast = cast;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public int getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public int getLanguageID() {
		return languageID;
	}

	public void setLanguageID(int languageID) {
		this.languageID = languageID;
	}
	public int getRentalDuration() {
		return rentalDuration;
	}

	public void setRentalDuration(int rentalDuration) {
		this.rentalDuration = rentalDuration;
	}
	public double getRentalRate() {
		return rentalRate;
	}
	public void setRentalRate(double rentalRate) {
		this.rentalRate = rentalRate;
	}

	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}

	public double getReplacementCost() {
		return replacementCost;
	}
	public void setReplacementCost(double replacementCost) {
		this.replacementCost = replacementCost;
	}

	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getSpecialFeatures() {
		return specialFeatures;
	}
	public void setSpecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}
	
	@Override
	public String toString() {
		return "Film " + id + " : \"" + title + "\"\n" + description + ".\nRating: " + rating + "  Released: " + releaseYear
				+ " Release Language: " + language + " Length: " + length + " minutes\nSpecial features: " + specialFeatures + ".\nStarring: " + cast + "\nRent for " + rentalDuration + " days for $" + rentalRate
				+ ", replace for $" + replacementCost + ".\n";
	}
	
	public boolean equals(int id) {
		if (this.id == id)
			return true;
		else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + id;
		result = prime * result + languageID;
		result = prime * result + length;
		result = prime * result + ((rating == null) ? 0 : rating.hashCode());
		result = prime * result + releaseYear;
		result = prime * result + rentalDuration;
		long temp;
		temp = Double.doubleToLongBits(rentalRate);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(replacementCost);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((specialFeatures == null) ? 0 : specialFeatures.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}

}
