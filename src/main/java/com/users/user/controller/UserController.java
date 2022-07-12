package com.users.user.controller;

import com.users.user.model.User;
import com.users.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView model = new ModelAndView("index");

        List<User> users = userService.findAll();
        model.addObject("allUsers", users);
        return model;
    }

    @RequestMapping("/new")
    public String creatUser(Map<String, Object> model) {
        User user = new User();
        model.put("user", user);
        return "new_user";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/";
    }

    @RequestMapping("/edit")
    public ModelAndView editCustomerForm(@RequestParam long id) {
        ModelAndView mav = new ModelAndView("edit_customer");
        User user = userService.get(id);
        mav.addObject("user", user);

        return mav;
    }

    @RequestMapping("/delete")
    public String deleteCustomerForm(@RequestParam long id) {
        userService.delete(id);
        return "redirect:/";
    }

}
