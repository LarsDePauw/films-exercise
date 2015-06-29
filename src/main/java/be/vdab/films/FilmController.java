package be.vdab.films;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    FilmRepository filmRepository;

    @RequestMapping(value = "/index.html")
    public String index() {
        return "index";
    }

    @RequestMapping("/films")
    public String films(Map<String, Object> model) {
        model.put("films", filmRepository.findAll());
        return "film/list";
    }

    @RequestMapping("/film")
    public String film(Map<String, Object> model, @RequestParam("id") int filmId) {
        model.put("film", filmRepository.findOne(filmId));
        return "film/details";
    }

    /**
     * Controller to EDIT and CREATE films
     */
    @RequestMapping("/form")
    public String form(Map<String, Object> model, @RequestParam(value = "id", required = false) Integer filmId) {
        if(filmId == null) {
            // Create new film
            model.put("film", new Film());
        } else {
            // Edit existing film
            model.put("film", filmRepository.findOne(filmId));
        }
        return "film/form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(@Valid Film film, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "film/form";
        } else {
            filmRepository.save(film);
            return "redirect:/films";
        }
    }
}
