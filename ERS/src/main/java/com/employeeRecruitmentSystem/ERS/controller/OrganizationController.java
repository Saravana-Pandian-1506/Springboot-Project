package com.employeeRecruitmentSystem.ERS.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.employeeRecruitmentSystem.ERS.model.Company;
import com.employeeRecruitmentSystem.ERS.model.Quiz;
import com.employeeRecruitmentSystem.ERS.model.Recruiter;
import com.employeeRecruitmentSystem.ERS.model.TestResult;
import com.employeeRecruitmentSystem.ERS.repository.RecruiterRepository;
import com.employeeRecruitmentSystem.ERS.repository.TestResultRepository;
import com.employeeRecruitmentSystem.ERS.serivce.EmailService;
import com.employeeRecruitmentSystem.ERS.serivce.OrganizationService;
import com.employeeRecruitmentSystem.ERS.serivce.QuizService;
import com.employeeRecruitmentSystem.ERS.serivce.TestResultService;

import jakarta.servlet.http.HttpSession;

@Controller
public class OrganizationController {
    
	@Autowired
	private OrganizationService organizationService;
	
	@Autowired
	private TestResultService testResultService;
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	private EmailService emailService;
	

	@GetMapping("/allCompanies")
	public ModelAndView showAllCompanies(HttpSession session) {
		ModelAndView mv = new ModelAndView("companies");
		List<Company> allCompanies = organizationService.findAllCompanies();
		System.out.println(allCompanies);
		session.setAttribute("allCompanies",allCompanies);
		return mv;
	}
	
	@GetMapping("/companies/{cmpId}")
	public ModelAndView showCompanies(@PathVariable Long cmpId,HttpSession session) {
		ModelAndView mv = new ModelAndView("company-details");
		Company company = organizationService.findByCmpId(cmpId);
	    session.setAttribute("company", company);
	    session.setAttribute("cmpName", company.getCmpName());
		return mv;
	}
	
	@PostMapping("/sendResultEmail")
	public ModelAndView sendSelectEmail(@RequestParam String empEmail ,HttpSession session) {
		ModelAndView mv = new ModelAndView("recruiterViewPage");
		
		emailService.sendQuizResult(
		        "goguldanger1234@gmail.com",
		        "Job Selection",
		         "You are selected for the next round"
		    );
		return mv;
	}
	

}
