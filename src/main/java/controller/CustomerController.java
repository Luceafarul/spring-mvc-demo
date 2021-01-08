package controller;

import javax.validation.Valid;
import model.Customer;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    @RequestMapping(value = "/show-form", method = RequestMethod.GET)
    public String form(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer-form";
    }

    @RequestMapping(value = "/process")
    public String process(
        @Valid @ModelAttribute("customer") Customer customer,
        BindingResult bindingResult
    ) {
        if (bindingResult.hasErrors()) {
            return "customer-form";
        } else {
            return "confirm-customer";
        }
    }

    @InitBinder
    private void trimStrings(WebDataBinder binder) {
        StringTrimmerEditor trimmerEditor = new StringTrimmerEditor(true);
        binder.registerCustomEditor(String.class, trimmerEditor);
    }
}
