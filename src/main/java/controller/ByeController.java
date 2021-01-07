package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/bye")
public class ByeController {

    @RequestMapping(value = "/show-form", method = RequestMethod.GET)
    public String helloForm() {
        return "bye-form";
    }
}
