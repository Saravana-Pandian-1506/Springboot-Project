package com.employeeRecruitmentSystem.ERS.serivce;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeRecruitmentSystem.ERS.controller.OrganizationController;
import com.employeeRecruitmentSystem.ERS.model.Quiz;
import com.employeeRecruitmentSystem.ERS.repository.QuizRepository;

@Service
public class QuizService {
     
	@Autowired
	private QuizRepository quizRepository;
	
	
	public List<Quiz> getQuizList(){
		
		List<Long> numbers = new ArrayList<>();
        for (int i = 1; i <= 40; i++) {
            numbers.add((long) i);
        }
        
        Collections.shuffle(numbers);
        List<Quiz> quizList = new ArrayList<>();
		
        for(int i=0;i<10;i++) {
            Quiz quiz = quizRepository.findById(numbers.get(i)).orElse(null);
            quizList.add(quiz);
        }
 
        return quizList;
	}
	
	
	public int getScore(Map<String, String> answers) {
		int score = 0, total = 0;
	    for (Map.Entry<String, String> entry : answers.entrySet()) {
	        String key = entry.getKey();
	        if (key.startsWith("userAnswer_")) {
	            String quizId = key.substring("userAnswer_".length());
	            String userAnswer = entry.getValue();
	            String correctAnswerKey = "correctAnswer_" + quizId;
	            String correctAnswer = answers.get(correctAnswerKey);

	            if (correctAnswer != null && correctAnswer.equals(userAnswer)) score++;
	            total++;
	        }
	    }
	    return score;
	}
	
	public long calculateTime(Long startTime) {
		long endTime = System.currentTimeMillis();
	    long timeTakenMillis = (startTime != null) ? (endTime - startTime) : 0;
	    long timeTakenSeconds = timeTakenMillis / 1000;
	    return timeTakenSeconds;
	}
	
	
	
	
	
}
