package controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
        return "processed";
    }

    @RequestMapping(value = "/custom-message", method = RequestMethod.GET)
    public String custom(HttpServletRequest request, Model model) {
        // Extract message and student name from request
        var message = request.getParameter("message");
        var name = request.getParameter("studentName");

        // Process
        var result = message + " " + name.toUpperCase() + "!";

        // Add result to model
        model.addAttribute("customMessage", result);

        return "processed";
    }
}
