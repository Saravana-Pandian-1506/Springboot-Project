package com.employeeRecruitmentSystem.ERS.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.employeeRecruitmentSystem.ERS.serivce.EmailService;

@RestController
@RequestMapping("/mail")
public class EmailContoller {
	
	@Autowired
    private EmailService emailService;
/*
    @PostMapping("/send")
    public String sendEmail() {
        try {
            //return emailService.sendEmail( "subject", "message");
        } catch (Exception e) {
            return "Error sending email: " + e.getMessage();
        }
    }
    */
}




