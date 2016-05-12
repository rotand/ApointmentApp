package com.AndreiWeb.controller;

import com.AndreiWeb.dao.DoctorDao;
import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.dao.UsersDao;
import com.AndreiWeb.model.Client;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Meeting;
import com.AndreiWeb.model.Users;
import com.AndreiWeb.service.ClientService;
import com.AndreiWeb.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
        import org.springframework.security.core.userdetails.User;
        import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
        import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
        import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */
@Controller
public class MeetingController {

    @Autowired
    private MeetingDao meetingDao;

    @Autowired
    private ClientService clientService;

    @Autowired
    private UsersService usersService;

    @Autowired
    private UsersDao usersDao;

    @Autowired
    private DoctorDao doctorDao;

    @RequestMapping("/client")
    public String clientPage(){
        return "client";
    }

    @RequestMapping("client/MeetingCalendar")
    public String MeetingCalendar(Model model){
        List<Meeting> meetings = meetingDao.getAllMeetings();
        model.addAttribute("meetings", meetings);

        return "MeetingCalendar";
    }

    @RequestMapping("/client/MeetingCalendar/addMeeting")

    public String addMeeting( Model model, @AuthenticationPrincipal User activeUser){

        Meeting meeting = new Meeting();
        List<Doctor> doctors = doctorDao.getAllDoctors();

//        Doctor doctor =  doctorDao.getDoctorById(meeting.getDoctor().getDoctorId());
//        System.out.println(doctor.getDoctorId() + doctor.getDoctorName());
//        meeting.setDoctor(doctor);



       // Users users = usersService.getUsersByUsername(activeUser.getUsername());
       // System.out.println(activeUser.getUsername());
      //  Client client = users.getClient();
        meeting.setDateTime(new Date(2015-11-11));


//       meeting.setHourTime(new Timestamp(2015-11-11));

       // meeting.setClient(client);

        model.addAttribute("meeting", meeting);


        model.addAttribute("doctors", doctors );
       // System.out.println(client.getClientName());

        return "addMeeting";
    }

    @RequestMapping(value ="/client/MeetingCalendar/addMeeting", method = RequestMethod.POST)
    public String addMeetingPost(@ModelAttribute("meeting") Meeting meeting, @AuthenticationPrincipal User activeUser){

      //  Users users = usersService.getUsersByUsername(activeUser.getUsername());
      //  System.out.println(activeUser.getUsername());
       // Client client = users.getClient();
        // / List <Meeting> meetings = client.getMeeting();
//        meetings.add(meeting);
//        meeting.setClient(client);
        Doctor doctor =  doctorDao.getDoctorById(1);
        System.out.println(doctor.getDoctorId() + doctor.getDoctorName());
        meeting.setDoctor(doctor);

        meetingDao.addMeeting(meeting);



        return "redirect:/client/MeetingCalendar";
    }



    @RequestMapping("/client/MeetingCalendar/deleteMeeting/{id}")
    public String deleteMeeting(@PathVariable int meetingId, Model model){
        meetingDao.deleteMeeting(meetingId);

        return "redirect:/client/MeetingCalendar";
    }

    @RequestMapping("/client/MeetingCalendar/editMeeting/{id}")
    public String editMeeting(@PathVariable int meetingId, Model model){
        Meeting meeting = meetingDao.getMeetingById(meetingId);

        model.addAttribute(meeting);

        return "editMeeting";
    }

//    @RequestMapping(value = "/admin/ApointmentCalendar/editApointment/", method = RequestMethod.POST)
//    public String editApointment(@ModelAttribute("apointment") Apointment apointment, Model model){
//
//        apointmentDao.editApointment(apointment);
//
//        return "redirect:/admin/ApointmentCalendar";
//    }

    @RequestMapping(value ="/client/MeetingCalendar/editMeeting", method = RequestMethod.POST)
    public String editMeetingPost(@ModelAttribute("meeting") Meeting meeting){
        meetingDao.editMeeting(meeting);


        return "redirect:/client/MeetingCalendar";
    }
}



