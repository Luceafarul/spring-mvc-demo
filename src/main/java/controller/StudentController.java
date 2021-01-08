package controller;

import model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import utils.Countries;

@Controller
@RequestMapping("/students")
public class StudentController {

    @RequestMapping("/show-form")
    public String form(Model model) {
        model.addAttribute("student", new Student());
        model.addAttribute("countries", Countries.countries);
        return "student-form";
    }

    @RequestMapping("/process")
    public String process(@ModelAttribute("student") Student student) {
        System.out.println(student);
        return "confirm-student";
    }
}
