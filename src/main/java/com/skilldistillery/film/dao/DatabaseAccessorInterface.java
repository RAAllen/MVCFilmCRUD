package com.skilldistillery.film.dao;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessorInterface {

	public Film getFilmById(int filmId);

	public Actor getActorById(int actorId);

	public List<Actor> getActorsByFilmId(int filmId);

	public Film getFilmByKeyword(String keywordInput);

}
