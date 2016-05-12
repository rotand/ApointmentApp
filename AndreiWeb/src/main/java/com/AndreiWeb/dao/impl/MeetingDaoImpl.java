package com.AndreiWeb.dao.impl;

import com.AndreiWeb.dao.MeetingDao;
import com.AndreiWeb.model.Doctor;
import com.AndreiWeb.model.Meeting;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by andrei on 02.05.2016.
 */

@Repository
@Transactional
public class MeetingDaoImpl implements MeetingDao{

        @Autowired
        private SessionFactory sessionFactory;

        public void addMeeting(Meeting meeting){
            Session session = sessionFactory.getCurrentSession();
           Doctor doctor = meeting.getDoctor();
            List<Meeting> doctorList = doctor.getMeetings();
            doctorList.add(meeting);
            session.saveOrUpdate(meeting);
            session.saveOrUpdate(meeting.getDoctor());


            session.flush();
        }



        public void editMeeting(Meeting meeting){
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(meeting);
            session.flush();
        }

        public Meeting getMeetingById(int meetingId){
            Session session = sessionFactory.getCurrentSession();
            Meeting meeting = (Meeting) session.get(Meeting.class, meetingId);
            session.flush();

            return meeting;
        }

        public List<Meeting> getAllMeetings(){
            Session session = sessionFactory.getCurrentSession();
            Query query = session.createQuery("from Meeting");
            List<Meeting> meetings = query.list();
            session.flush();

            return meetings;
        }

        public void deleteMeeting(int meetingId){
            Session session = sessionFactory.getCurrentSession();
            session.delete(getMeetingById(meetingId));
            session.flush();

        }

    }
