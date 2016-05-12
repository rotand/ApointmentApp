package com.AndreiWeb.controller;

import com.AndreiWeb.dao.ApointmentDao;
import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.model.Apointment;
import com.AndreiWeb.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by andrei on 18.04.2016.
 */
@Controller
public class WelcomeController {



    @Autowired
    private ApointmentDao apointmentDao;



    @RequestMapping("/")
    public String home(){
        return "home";
    }




    @RequestMapping("/apointmentList")
    public String getApointment(Model model){
        List<Apointment> apointments = apointmentDao.getAllApointments();

        model.addAttribute("apointments", apointments );

        return "apointmentList";
    }



}
