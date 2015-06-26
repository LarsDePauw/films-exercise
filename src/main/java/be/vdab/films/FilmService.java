package be.vdab.films;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api")
public class FilmService {
    @Autowired
    FilmRepository filmRepository;

    @RequestMapping(value = "film/all", produces = "application/json", method = RequestMethod.GET)
    public List<Film> films() {
        return filmRepository.findAll();
    }

    @RequestMapping(value = "film/{id}", produces = "application/xml", method = RequestMethod.GET)
    public Film film(@PathVariable("id") int id) {
        return filmRepository.findOne(id);
    }
}
