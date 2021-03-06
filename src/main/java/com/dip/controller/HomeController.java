package com.dip.controller;

import com.dip.entity.User;
import com.dip.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.*;
import java.util.stream.Collectors;

@Controller
public class HomeController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String home(Model model, Principal principal, HttpServletRequest request) {
        String name = principal.getName(); //get logged in username
        User user = userService.getUser(name);
        model.addAttribute("user", user);
        Locale.setDefault(Locale.ENGLISH);
        Set<String> languages = Arrays.stream(Locale.getISOLanguages())
                .map(Locale::new)
                .map(Locale::getDisplayLanguage)
                .collect(Collectors.toCollection(TreeSet::new));
        model.addAttribute("languages", languages);
        request.getSession().setAttribute("user", user);
        return "home";
    }

    @PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") User user, HttpServletRequest request) {
        User userWithPreviousFilledFields = (User) request.getSession().getAttribute("user");
        user.setPassword(userWithPreviousFilledFields.getPassword());
        user.setFriends(userWithPreviousFilledFields.getFriends());
        user.setFriendOf(userWithPreviousFilledFields.getFriendOf());
        userService.saveUser(user);
        return "redirect:/";
    }
}
