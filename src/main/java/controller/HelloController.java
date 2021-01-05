package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String helloForm() {
        return "hello-form";
    }

    @RequestMapping(value = "/process", method = RequestMethod.GET)
    public String process() {
        // Extract name from form
        return "processed";
    }
}
