package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.dao.DatabaseAccessorImpl;
import com.skilldistillery.film.entities.Film;

@Controller
public class MVCFilmController {
	@Autowired
	DatabaseAccessorImpl dao;

	@RequestMapping(path = "*.do")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WebContent/index.html");
		return mv;
	}

	@RequestMapping(path = "viewFilm.do", method = RequestMethod.GET)
	public ModelAndView viewFilmById(@RequestParam(name = "id") Integer filmId) {
		Film film;
		ModelAndView mv;
		film = dao.getFilmById(filmId);
		mv = new ModelAndView("WEB-INF/views/result.jsp");
		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "viewFilm.do", method = RequestMethod.GET)
	public ModelAndView viewFilmByKeyword(@RequestParam(name = "keyword") String keyword) {
		Film film;
		ModelAndView mv;
		film = dao.getFilmByKeyword(keyword);
		mv = new ModelAndView("WEB-INF/views/result.jsp");
		mv.addObject("film", film);
		return mv;
	}

	@RequestMapping(path = "addFilm.do", method = RequestMethod.POST)
	public ModelAndView addFilm(@RequestParam(name = "title") String title,
			@RequestParam(name = "description") String description, @RequestParam(name = "releaseYear") int releaseYear,
			// I will need to implement a selection menu for the language
			@RequestParam(name = "languageId") int languageId,
			@RequestParam(name = "rentalDuration") int rentalDuration,
			@RequestParam(name = "rentalRate") double rentalRate, @RequestParam(name = "length") int length,
			@RequestParam(name = "replacementCost") double replacementCost,
			@RequestParam(name = "rating") String rating,
			@RequestParam(name = "specialFeatures") String specialFeatures) {
		Film filmToAdd = new Film(title, description, releaseYear, languageId, rentalDuration, rentalRate, length,
				replacementCost, rating, specialFeatures);
		Film film = dao.addFilmToDataBase(filmToAdd);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/result.jsp");
		mv.addObject("filmToAdd", film);
		return mv;
	}

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.POST)
	public ModelAndView deleteFilm(RedirectAttributes redir, @RequestParam(name = "id") int id) {
		ModelAndView mv = new ModelAndView();
		boolean deleted = dao.deleteFilm(id);
		if (deleted) {
			mv.setViewName("WEB-INF/views/result.jsp");
		} else {
			mv.setViewName("WEB-INF/views/fail.jsp");
		}
		return mv;
	}

	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)
	public ModelAndView updateFilm(RedirectAttributes redir, @RequestParam(name = "id") int id,
			@RequestParam(name = "title") String title, @RequestParam(name = "description") String description,
			@RequestParam(name = "releaseYear") int releaseYear, @RequestParam(name = "languageId") int languageId,
			@RequestParam(name = "rentalDuration") int rentalDuration,
			@RequestParam(name = "rentalRate") double rentalRate, @RequestParam(name = "length") int length,
			@RequestParam(name = "replacementCost") double replacementCost,
			@RequestParam(name = "rating") String rating,
			@RequestParam(name = "specialFeatures") String specialFeatures) {
		Film filmToAdd = new Film(title, description, releaseYear, languageId, rentalDuration, rentalRate, length, replacementCost, rating, specialFeatures);
		filmToAdd.setId(id);
		Film film = dao.addFilmToDataBase(filmToAdd);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/result.jsp");
		mv.addObject("filmToAdd", film);
		return mv;
	}

}
