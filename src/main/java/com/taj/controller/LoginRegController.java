package com.taj.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginRegController 
{
    @RequestMapping(value = {"/login"}, method = RequestMethod.POST)
    public String submit(HttpServletRequest request)
    {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        return "login";
    }
}
