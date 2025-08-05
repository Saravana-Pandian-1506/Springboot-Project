package com.employeeRecruitmentSystem.ERS.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.employeeRecruitmentSystem.ERS.model.Company;
import com.employeeRecruitmentSystem.ERS.model.Candidate;
import com.employeeRecruitmentSystem.ERS.model.Recruiter;
import com.employeeRecruitmentSystem.ERS.model.TestResult;
import com.employeeRecruitmentSystem.ERS.repository.RecruiterRepository;
import com.employeeRecruitmentSystem.ERS.serivce.CandidateService;
import com.employeeRecruitmentSystem.ERS.serivce.OrganizationService;
import com.employeeRecruitmentSystem.ERS.serivce.RecruiterService;
import com.employeeRecruitmentSystem.ERS.serivce.TestResultService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {
	
	@Autowired
	public CandidateService candidateService;
	
	@Autowired
	private OrganizationService organizationService;
	
	
	@Autowired
	private RecruiterService recruiterService;
	
	@Autowired
	private TestResultService testResultService;
    
	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
	    return mv;
	}
	
	@GetMapping("/register")
	public ModelAndView signupPage(){
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	
	@PostMapping("/register")
	public ModelAndView signup(Candidate candidate) {
		ModelAndView mv = new ModelAndView("login");
		candidateService.saveCandidate(candidate);
		return mv;
	}
	
	@GetMapping("/login")
	public ModelAndView loginPage(){
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	
	@PostMapping("/validateLogin")
	public ModelAndView validateLogin(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession session) {
		
		ModelAndView mv = new ModelAndView("login");
		Candidate candidate = candidateService.findByEmail(email);
        System.out.println(candidate);
        if(candidate!=null&&email.equals(candidate.getCandidateEmail())&&password.equals(candidate.getPassword())) {
    		List<Company> allCompanies = organizationService.findAllCompanies();
    		session.setAttribute("candidateName", candidate.getCandidateName());
    		session.setAttribute("candidateEmail", email);
    		session.setAttribute("allCompanies",allCompanies);
        	mv.setViewName("companies");
        }else {
           mv.addObject("invalidCredentials",true);
        }
        return mv;
	}
	
	@GetMapping("/recruiterLogin")
	public ModelAndView showRecruiterLogin(HttpSession session)
	{
		ModelAndView mv = new ModelAndView("recruiter-login");
		List<Company> allCompanies = organizationService.findAllCompanies();
		System.out.println(allCompanies);
		session.setAttribute("allCompanies",allCompanies);
		return mv;
	}
	
	@PostMapping("/recruiterLogin")
	public ModelAndView recruiterLogin(@RequestParam String cmpName,@RequestParam String password,HttpSession session) {
		ModelAndView mv = new ModelAndView("recruiter-login");
		Recruiter recruiter = recruiterService.findByCmpName(cmpName);
		String correctPass = recruiter.getPassword();
		
		if(correctPass.equals(password)) {
			List<TestResult> testResults = testResultService.getValidScoreCandidate(cmpName);
			session.setAttribute("testResults", testResults);
			mv.setViewName("recruiterViewPage");
		}else {
	        mv.addObject("invalidCredentials",true);
		}
		return mv;
	}
	
	
}
