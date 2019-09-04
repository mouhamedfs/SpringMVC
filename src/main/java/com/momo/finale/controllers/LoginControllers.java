package com.momo.finale.controllers;

import com.momo.finale.dao.UserRepo;
import com.momo.finale.model.Etudiant;
import com.momo.finale.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

public class LoginControllers {

    @Autowired
    UserRepo repository;

    @RequestMapping("/addUser")
    public String addUser(User user)
    {
        repository.save(user);
        return "index.jsp";
    }

}
