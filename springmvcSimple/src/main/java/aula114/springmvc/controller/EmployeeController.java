package aula114.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import aula114.springmvc.service.EmployeeService;
import aula114.springmvc.domain.Contact;

import java.util.List;
import java.util.ArrayList;

@Controller
public class EmployeeController {
  @Autowired
  private EmployeeService employeeService;

  @RequestMapping("/show/{clave}")
  public String showID(@PathVariable String clave, Model model) {
    model.addAttribute("idContact",employeeService.show(clave));
    model.addAttribute("id",clave);
    return "viewContact";
  }

  @RequestMapping("/delete/{clave}")
  public String deleteID(@PathVariable String clave, Model model) {
    model.addAttribute("id",employeeService.delete(clave));
    this.listId(model);
    return "listId";
  }

  @RequestMapping("/edit/{clave}")
  public String editID(@PathVariable String clave, Model model) {
    model.addAttribute("idContact",employeeService.edit(clave));
    model.addAttribute("id",clave);
    return "viewContact";
  }
  
  @RequestMapping("/show")
  public String show() {
    //TODO
    return "viewAll";
  }
  
  @RequestMapping("/employee")
  public String listId(Model model) {
    model.addAttribute("idList",employeeService.listIdEmployee());
    return "listId";
  }
}
