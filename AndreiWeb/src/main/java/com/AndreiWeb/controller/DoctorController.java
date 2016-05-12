package com.AndreiWeb.controller;

import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.DoctorService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by andrei on 25.04.2016.
 */
@Controller
public class DoctorController {

    @Autowired
    private DoctorDao doctorDao;


    @Autowired
        private DoctorService doctorService;

        @Autowired
        private UsersService usersService;

        @RequestMapping("/registerD")
        public String registerDoctor(Model model) {

            Doctor doctor = new Doctor();
            Users users = new Users();
            doctor.setUsers(users);
            model.addAttribute("doctor", doctor);

            return "registerDoctor";

        }

        @RequestMapping(value = "/registerD", method = RequestMethod.POST)
        public String registerDoctorPost(@Valid @ModelAttribute("doctor") Doctor doctor, BindingResult result,
                                         Model model) {

            if (result.hasErrors()) {
                return "registerDoctor";
            }

            List<Doctor> doctorList = doctorService.getAllDoctors();
            List<Users> usersList = usersService.getAllUsers();

            for (int i=0; i< doctorList.size(); i++) {
                if(doctor.getDoctorEmail().equals(doctorList.get(i).getDoctorEmail())) {
                    model.addAttribute("emailMsgg", "Email already exists");

                    return "registerDoctor";
                }

                if(doctor.getUsers().getUsername().equals(doctorList.get(i).getUsers().getUsername())) {
                    model.addAttribute("usernameMsgg", "Username already exists");

                    return "registerDoctor";
                }


            }

            for (int i=0; i< usersList.size(); i++) {

                if(doctor.getUsers().getUsername().equals(usersList.get(i).getUsername())) {
                    model.addAttribute("usernameMsg", "Username already exists");

                    return "registerDoctor";
                }
            }

            doctor.setEnabled(true);
            doctorService.addDoctor(doctor);

            return "registerDoctorSuccesfuly";

        }
    @RequestMapping("/userList")
    public String getDoctor(Model model){
        List<Doctor> doctors = doctorDao.getAllDoctors();

        model.addAttribute("doctors", doctors );

        return "userList";
    }


}

