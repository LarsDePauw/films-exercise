package be.vdab.films;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    FilmRepository filmRepository;

    @RequestMapping(value = "/index")
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

    @RequestMapping("/form")
    public String form() {
        return "film/form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(Film film) {
        filmRepository.save(film);
        return "redirect:/films";
    }
}
