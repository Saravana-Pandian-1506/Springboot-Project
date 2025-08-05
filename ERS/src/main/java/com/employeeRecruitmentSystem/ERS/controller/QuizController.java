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

import com.employeeRecruitmentSystem.ERS.model.Quiz;
import com.employeeRecruitmentSystem.ERS.model.TestResult;
import com.employeeRecruitmentSystem.ERS.serivce.EmailService;
import com.employeeRecruitmentSystem.ERS.serivce.QuizService;
import com.employeeRecruitmentSystem.ERS.serivce.TestResultService;

import jakarta.servlet.http.HttpSession;

@Controller
public class QuizController {
	
	@Autowired
	private QuizService quizService;
	
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private TestResultService testResultService;
	
	
	@GetMapping("/quiz/{cmpId}")
	public ModelAndView showQuiz(@PathVariable Long cmpId,HttpSession session) {
		ModelAndView mv = new ModelAndView("quizPage");
	    List<Quiz>quizList = quizService.getQuizList();
	    session.setAttribute("quizList", quizList);
	    session.setAttribute("quizStartTime", System.currentTimeMillis());
	    return mv;
	}
	
	@PostMapping("/submitQuiz")
	public ModelAndView evaluateQuiz(@RequestParam Map<String, String> params, HttpSession session) {
	    ModelAndView mv = new ModelAndView("quizResult");
	    int total = 10;
        int score = quizService.getScore(params);
        
	    Long startTime = (Long) session.getAttribute("quizStartTime");
	    long timeTakenSeconds = quizService.calculateTime(startTime);
	    
	    session.setAttribute("score", score);
	    session.setAttribute("total", total);
	    session.setAttribute("timeTakenSeconds", timeTakenSeconds);

	    String candidateEmail = (String) session.getAttribute("candidateEmail");
	    String candidateName = (String) session.getAttribute("candidateName");
	    String cmpName = (String) session.getAttribute("cmpName");

	    TestResult result = new TestResult();
	    result.setCmpName(cmpName);
	    result.setCandidateEmail(candidateEmail);
	    result.setCandidateName(candidateName);
	    result.setScore((long) score); 
	    result.setTimeTaken(timeTakenSeconds);

	    testResultService.saveTest(result); 
	    if (score >= 8) {
	        emailService.sendQuizResult(
	            "goguldanger1234@gmail.com",
	            "Your Quiz Submission",
	            "Your score is " + score
	        );
	    }
	    return mv;
	}
}
